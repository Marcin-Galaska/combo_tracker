-- Combo Tracker mod by mroużon. Ver. 1.0.0
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

local mod = get_mod("combo_tracker")

-- ##################################################
-- Requires
-- ##################################################

local WeaponTemplate = require("scripts/utilities/weapon/weapon_template")
local AttackSettings = require("scripts/settings/damage/attack_settings")

local Patterns = mod:io_dofile("combo_tracker/scripts/mods/combo_tracker/combo_tracker_patterns")

-- ##################################################
-- Mod variables
-- ##################################################

mod._is_melee = false
mod._is_heavy = false
mod._push_follow_up = false
mod._show_active_and_next = false
mod._should_draw_widget = true
mod._next_light = 0
mod._next_heavy = 0
mod._current_attack = 0
mod._last_action_t = 0
mod._primary_attack_chain = {}
mod._secondary_attack_chain = {}
mod._weapon_name = ""
mod._last_action_name = ""

mod._combo_tracker_widget_fade_inout_speed = mod:get("combo_tracker_widget_fade_inout_speed")
mod._combo_tracker_widget_only_in_training_grounds = mod:get("combo_tracker_widget_only_in_training_grounds")
mod._combo_tracker_widget_show_next_attacks = mod:get("combo_tracker_widget_show_next_attacks")
mod._combo_tracker_widget_horizontal_offset = mod:get("combo_tracker_widget_horizontal_offset")
mod._combo_tracker_widget_vertical_offset = -1 * mod:get("combo_tracker_widget_vertical_offset")
mod._combo_tracker_widget_default_appearance = {
    mod:get("combo_tracker_widget_default_opacity"),
    mod:get("combo_tracker_widget_default_R"),
    mod:get("combo_tracker_widget_default_G"),
    mod:get("combo_tracker_widget_default_B")
}
mod._combo_tracker_widget_active_appearance = {
    mod:get("combo_tracker_widget_active_opacity"),
    mod:get("combo_tracker_widget_active_R"),
    mod:get("combo_tracker_widget_active_G"),
    mod:get("combo_tracker_widget_active_B")
}
mod._combo_tracker_widget_next_appearance = {
    mod:get("combo_tracker_widget_next_opacity"),
    mod:get("combo_tracker_widget_next_R"),
    mod:get("combo_tracker_widget_next_G"),
    mod:get("combo_tracker_widget_next_B")
}
mod._combo_tracker_widget_frame_appearance = {
    mod:get("combo_tracker_widget_frame_opacity"),
    mod:get("combo_tracker_widget_frame_R"),
    mod:get("combo_tracker_widget_frame_G"),
    mod:get("combo_tracker_widget_frame_B")
}

mod._weapon_action_type_icons = {
    ["tank"] = "content/ui/materials/icons/weapons/actions/tank",
    ["ninja_fencer"] = "content/ui/materials/icons/weapons/actions/ninjafencer",
    ["linesman"] = "content/ui/materials/icons/weapons/actions/linesman",
    ["smiter"] = "content/ui/materials/icons/weapons/actions/smiter"
}

local hud_element_script = "combo_tracker/scripts/mods/combo_tracker/hud/hud_element_combo"
local hud_element_class = "HudElementCombo"

local combo_hud_element = {
    filename = hud_element_script,
    class_name = hud_element_class,
    visibility_groups = {
        "alive",
        "communication_wheel"
    }
}

-- ##################################################
-- Initalization
-- ##################################################

local init = function(func, ...)
    if func then
        func(...)
    end
end

mod.recreate_hud = function(self)
	local ui_manager = Managers.ui
	if ui_manager then
		local hud = ui_manager._hud
		if hud then
			local player = Managers.player:local_player(1)
			local peer_id = player:peer_id()
			local local_player_id = player:local_player_id()
			local elements = hud._element_definitions
			local visibility_groups = hud._visibility_groups
			hud:destroy()
			ui_manager:create_player_hud(peer_id, local_player_id, elements, visibility_groups)
		end
	end
end

mod.get_hud_element = function()
    local hud = Managers.ui:get_hud()
    return hud and hud:element(combo_hud_element.class_name)
end

mod.on_setting_changed = function(id)
    if id == "combo_tracker_widget_horizontal_offset" then
        mod._combo_tracker_widget_horizontal_offset = mod:get(id)

        local combo_element = mod.get_hud_element()
        if combo_element then
            combo_element:set_offset(mod._combo_tracker_widget_vertical_offset, mod._combo_tracker_widget_horizontal_offset)
        end
    elseif id == "combo_tracker_widget_vertical_offset" then
        mod._combo_tracker_widget_vertical_offset = -1 * mod:get(id)

        local combo_element = mod.get_hud_element()
        if combo_element then
            combo_element:set_offset(mod._combo_tracker_widget_vertical_offset, mod._combo_tracker_widget_horizontal_offset)
        end
    elseif id == "combo_tracker_widget_default_opacity" then
        mod._combo_tracker_widget_default_appearance = {
            mod:get(id),
            mod:get("combo_tracker_widget_default_R"),
            mod:get("combo_tracker_widget_default_G"),
            mod:get("combo_tracker_widget_default_B")
        }
    elseif id == "combo_tracker_widget_default_R" then
        mod._combo_tracker_widget_default_appearance = {
            mod:get("combo_tracker_widget_default_opacity"),
            mod:get(id),
            mod:get("combo_tracker_widget_default_G"),
            mod:get("combo_tracker_widget_default_B")
        }
    elseif id == "combo_tracker_widget_default_G" then
        mod._combo_tracker_widget_default_appearance = {
            mod:get("combo_tracker_widget_default_opacity"),
            mod:get("combo_tracker_widget_default_R"),
            mod:get(id),
            mod:get("combo_tracker_widget_default_B")
        }
    elseif id == "combo_tracker_widget_default_B" then
        mod._combo_tracker_widget_default_appearance = {
            mod:get("combo_tracker_widget_default_opacity"),
            mod:get("combo_tracker_widget_default_R"),
            mod:get("combo_tracker_widget_default_G"),
            mod:get(id)
        }
    elseif id == "combo_tracker_widget_active_opacity" then
        mod._combo_tracker_widget_active_appearance = {
            mod:get(id),
            mod:get("combo_tracker_widget_active_R"),
            mod:get("combo_tracker_widget_active_G"),
            mod:get("combo_tracker_widget_active_B")
        }
    elseif id == "combo_tracker_widget_active_R" then
        mod._combo_tracker_widget_active_appearance = {
            mod:get("combo_tracker_widget_active_opacity"),
            mod:get(id),
            mod:get("combo_tracker_widget_active_G"),
            mod:get("combo_tracker_widget_active_B")
        }
    elseif id == "combo_tracker_widget_active_G" then
        mod._combo_tracker_widget_active_appearance = {
            mod:get("combo_tracker_widget_active_opacity"),
            mod:get("combo_tracker_widget_active_R"),
            mod:get(id),
            mod:get("combo_tracker_widget_active_B")
        }
    elseif id == "combo_tracker_widget_active_B" then
        mod._combo_tracker_widget_active_appearance = {
            mod:get("combo_tracker_widget_active_opacity"),
            mod:get("combo_tracker_widget_active_R"),
            mod:get("combo_tracker_widget_active_G"),
            mod:get(id)
        }
    elseif id == "combo_tracker_widget_next_opacity" then
        mod._combo_tracker_widget_next_appearance = {
            mod:get(id),
            mod:get("combo_tracker_widget_next_R"),
            mod:get("combo_tracker_widget_next_G"),
            mod:get("combo_tracker_widget_next_B")
        }
    elseif id == "combo_tracker_widget_next_R" then
        mod._combo_tracker_widget_next_appearance = {
            mod:get("combo_tracker_widget_next_opacity"),
            mod:get(id),
            mod:get("combo_tracker_widget_next_G"),
            mod:get("combo_tracker_widget_next_B")
        }
    elseif id == "combo_tracker_widget_next_G" then
        mod._combo_tracker_widget_next_appearance = {
            mod:get("combo_tracker_widget_next_opacity"),
            mod:get("combo_tracker_widget_next_R"),
            mod:get(id),
            mod:get("combo_tracker_widget_next_B")
        }
    elseif id == "combo_tracker_widget_next_B" then
        mod._combo_tracker_widget_next_appearance = {
            mod:get("combo_tracker_widget_next_opacity"),
            mod:get("combo_tracker_widget_next_R"),
            mod:get("combo_tracker_widget_next_G"),
            mod:get(id)
        }
    elseif id == "combo_tracker_widget_frame_opacity" then
        mod._combo_tracker_widget_frame_appearance = {
            mod:get(id),
            mod:get("combo_tracker_widget_frame_R"),
            mod:get("combo_tracker_widget_frame_G"),
            mod:get("combo_tracker_widget_frame_B")
        }

        local combo_element = mod.get_hud_element()
        if combo_element then
            combo_element:set_frame_appearance(mod._combo_tracker_widget_frame_appearance)
        end
    elseif id == "combo_tracker_widget_frame_R" then
        mod._combo_tracker_widget_frame_appearance = {
            mod:get("combo_tracker_widget_frame_opacity"),
            mod:get(id),
            mod:get("combo_tracker_widget_frame_G"),
            mod:get("combo_tracker_widget_frame_B")
        }

        local combo_element = mod.get_hud_element()
        if combo_element then
            combo_element:set_frame_appearance(mod._combo_tracker_widget_frame_appearance)
        end
    elseif id == "combo_tracker_widget_frame_G" then
        mod._combo_tracker_widget_frame_appearance = {
            mod:get("combo_tracker_widget_frame_opacity"),
            mod:get("combo_tracker_widget_frame_R"),
            mod:get(id),
            mod:get("combo_tracker_widget_frame_B")
        }

        local combo_element = mod.get_hud_element()
        if combo_element then
            combo_element:set_frame_appearance(mod._combo_tracker_widget_frame_appearance)
        end
    elseif id == "combo_tracker_widget_frame_B" then
        mod._combo_tracker_widget_frame_appearance = {
            mod:get("combo_tracker_widget_frame_opacity"),
            mod:get("combo_tracker_widget_frame_R"),
            mod:get("combo_tracker_widget_frame_G"),
            mod:get(id)
        }

        local combo_element = mod.get_hud_element()
        if combo_element then
            combo_element:set_frame_appearance(mod._combo_tracker_widget_frame_appearance)
        end
    elseif id == "combo_tracker_widget_fade_inout_speed" then
        mod._combo_tracker_widget_fade_inout_speed = mod:get(id)
    elseif id == "combo_tracker_widget_only_in_training_grounds" then
        mod._combo_tracker_widget_only_in_training_grounds = mod:get(id)
        local game_mode_name = Managers.state.game_mode:game_mode_name()
        if game_mode_name ~= "shooting_range" then
            mod._should_draw_widget = not mod:get(id)
        end
    elseif id == "combo_tracker_widget_show_next_attacks" then
        mod._combo_tracker_widget_show_next_attacks = mod:get(id)
    end
end

mod.on_all_mods_loaded = function()
    init()
    mod:recreate_hud()
end

mod.player_unit_loaded = function(self)
	self:init()
    mod:recreate_hud()
end

mod.player_unit_destroyed = function(self, player_unit)
	if player_unit == mod.player_unit then
        -- TODO
	end
end

-- ##################################################
-- Custom functions
-- ##################################################

-- ##################################################
-- Hooks
-- ##################################################

mod:hook_safe("PlayerUnitWeaponExtension", "on_slot_wielded", function(self, slot_name, t, skip_wield_action)
    if mod._combo_tracker_widget_only_in_training_grounds == true then
        local game_mode_name = Managers.state.game_mode:game_mode_name()
        if game_mode_name ~= "shooting_range" then
            mod._should_draw_widget = false
            return
        end
    end

    local weapon_action_component = self._weapon_action_component
    local weapon_template = weapon_action_component and WeaponTemplate.current_weapon_template(weapon_action_component)

	mod._is_melee = weapon_template and WeaponTemplate.is_melee(weapon_template)

    if weapon_template and mod._is_melee then
        mod._should_draw_widget = true
        mod._primary_attack_chain = weapon_template.displayed_attacks.primary.attack_chain
        mod._secondary_attack_chain = weapon_template.displayed_attacks.secondary.attack_chain
    end

    local combo_element = mod.get_hud_element()
    if combo_element then
        combo_element:set_background_size(#mod._primary_attack_chain, #mod._secondary_attack_chain)
    end

    if mod._is_melee then
        local weapon = self._weapons[slot_name]
	    local weapon_item = weapon.item
        mod._weapon_name = weapon_item.name
    end
end)

mod:hook_safe("ActionSweep", "start", function(self, action_settings, t, time_scale, action_start_params)
    if not mod._is_melee then
        return
    end

    local melee_attack_strengths = AttackSettings.melee_attack_strength
    local damage_profile = action_settings.damage_profile

    mod._is_heavy = damage_profile.melee_attack_strength == melee_attack_strengths.heavy
    mod._show_active_and_next = true

    if mod._current_attack ~= 0 then
        if mod._is_heavy then
            mod._current_attack = mod._next_heavy
        else
            mod._current_attack = mod._next_light
        end
    else
        mod._current_attack = 1
    end

    if mod._push_follow_up == true then
        if mod._is_heavy then
            mod._current_attack = mod._next_heavy
        else
            mod._current_attack = mod._next_light
        end

        mod._push_follow_up = false
    end

    if string.len(mod._weapon_name) > 0 and not mod._is_heavy then
        mod._next_light = Patterns[mod._weapon_name].light[mod._current_attack].light
        mod._next_heavy = Patterns[mod._weapon_name].light[mod._current_attack].heavy
    elseif string.len(mod._weapon_name) > 0 and mod._is_heavy then
        mod._next_light = Patterns[mod._weapon_name].heavy[mod._current_attack].light
        mod._next_heavy = Patterns[mod._weapon_name].heavy[mod._current_attack].heavy
    end
end)

mod:hook_safe("ActionSweep", "finish", function(self, reason, data, t, time_in_action)
    if not mod._is_melee then
        return
    end

    if reason == "action_complete" then
        mod._current_attack = 0
    end

    mod._show_active_and_next = false
end)

mod:hook_safe("ActionPush", "start", function(self, ...)
    if not mod._is_melee then
        return
    end

    mod._current_attack = 0
    mod._next_light = Patterns[mod._weapon_name].push.light
    mod._next_heavy = Patterns[mod._weapon_name].push.heavy
    mod._show_active_and_next = true
end)

mod:hook_safe("ActionPush", "finish", function(self, ...)
    if not mod._is_melee then
        return
    end

    mod._show_active_and_next = false
end)

local max_push_time = 0.7
mod:hook_safe("ActionHandler", "start_action", function (self, id, action_objects, action_name, action_params, action_settings, used_input, t, transition_type, condition_func_params, automatic_input, reset_combo_override)
    local is_action_windup = string.find(action_name, "action_melee") ~= nil
    if not (
        string.find(action_name, "action_melee") or
        string.find(action_name, "action_left") or
        string.find(action_name, "action_right") or
        string.find(action_name, "action_heavy") or
        string.find(action_name, "action_light")
    ) then
        mod._current_attack = 0
    end

    if is_action_windup and mod._last_action_name == "action_push" then
        if t - mod._last_action_t < max_push_time then
            mod._push_follow_up = true
        else
            mod._push_follow_up = false
        end
    end

    mod._last_action_name = action_name
    mod._last_action_t = t
end)

-- Add hud element to hud
mod:add_require_path(hud_element_script)
mod:hook(CLASS.UIHud, "init", function(func, self, elements, visibility_groups, params, ...)
	if not table.find_by_key(elements, "class_name", hud_element_class) then
		table.insert(elements, combo_hud_element)
	end

	return func(self, elements, visibility_groups, params, ...)
end)