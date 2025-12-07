-- Combo Tracker mod by mroużon. Ver. 2.0.10
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

local mod = get_mod("combo_tracker")

-- ##################################################
-- Requires
-- ##################################################

local WeaponTemplate = require("scripts/utilities/weapon/weapon_template")

local Patterns = mod:io_dofile("combo_tracker/scripts/mods/combo_tracker/combo_tracker_patterns")

-- ##################################################
-- Mod variables
-- ##################################################

mod._is_melee = false                                               -- Whether the player currently wields a melee weapon
mod._should_draw_widget = true                                      -- Whether the widget should be drawn
mod._primary_attack_chain = {}                                      -- Table of light attack combo icons
mod._secondary_attack_chain = {}                                    -- Table of heavy attack combo icons
mod._weapon_actions = {}                                            -- Table of relevant actions of current melee weapon
mod._light_sweeps = {}                                              -- Table of light attack combo action names
mod._heavy_sweeps = {}                                              -- Table of heavy attack combo action names
mod._weapon_name = ""                                               -- Name of currently drawn melee weapon
mod._current_action = ""                                            -- Name of current action
mod._next_light = ""                                                -- Name of predicted next light attack action
mod._next_heavy = ""                                                -- Name of predicted next heavy attack action

mod._is_foldable_shovel = false                                     -- Whether the currently drawn melee weapon is a foldable shovel
mod._is_foldable_shovel_folded = false                              -- Whether the currently drawn foldable shovel weapon is folded

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

local hud_element_script = "combo_tracker/scripts/mods/combo_tracker/hud/hud_element_combo"
local hud_element_class = "HudElementCombo"

local combo_hud_element = {
    use_hud_scale = true,
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

mod.reset_logic_variables = function()
    mod._is_melee = false
    mod._should_draw_widget = true
    mod._primary_attack_chain = {}
    mod._secondary_attack_chain = {}
    mod._weapon_actions = {}
    mod._light_sweeps = {}
    mod._heavy_sweeps = {}
    mod._weapon_name = ""
    mod._current_action = ""
    mod._next_light = ""
    mod._next_heavy = ""
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
        mod.reset_logic_variables()
        mod.initialized = false
	end
end

-- ##################################################
-- Custom functions
-- ##################################################

local _handle_weapon_pattern = function(weapon_actions, primary_attack_chain_length, secondary_attack_chain_length)
    mod._light_sweeps = {}
    mod._heavy_sweeps = {}

    local actions = weapon_actions
    local current_windup = actions[actions["default"]]

    for i = 1, primary_attack_chain_length, 1 do
        mod._light_sweeps[i] = current_windup.allowed_chain_actions.light_attack.action_name
        current_windup = actions[actions[mod._light_sweeps[i]].allowed_chain_actions.start_attack.action_name]
    end

    current_windup = actions[actions["default"]]

    for i = 1, secondary_attack_chain_length, 1 do
        mod._heavy_sweeps[i] = current_windup.allowed_chain_actions.heavy_attack.action_name
        current_windup = actions[actions[mod._heavy_sweeps[i]].allowed_chain_actions.start_attack.action_name]
    end
end

local _handle_next_attacks = function(current_action, is_foldable_shovel, is_foldable_shovel_folded)
    if mod._weapon_actions == nil then
        return
    end

    if not mod._weapon_actions[current_action] then
        current_action = mod._weapon_actions["default"]
    end

    local allowed_chain_actions = mod._weapon_actions[current_action].allowed_chain_actions

    if not is_foldable_shovel then
        if allowed_chain_actions.start_attack then
            local action_windup = mod._weapon_actions[allowed_chain_actions.start_attack.action_name]
            mod._next_light = action_windup.allowed_chain_actions.light_attack.action_name
            mod._next_heavy = action_windup.allowed_chain_actions.heavy_attack.action_name
        elseif allowed_chain_actions.light_attack and allowed_chain_actions.heavy_attack then
            mod._next_light = allowed_chain_actions.light_attack.action_name
            mod._next_heavy = allowed_chain_actions.heavy_attack.action_name
        else
            mod._next_light = ""
            mod._next_heavy = ""
        end
    else
        if allowed_chain_actions.start_attack then
            if string.find(current_action, "special") or current_action == "action_push" or current_action == "action_block" then
                if is_foldable_shovel_folded == true then
                    local action_windup = mod._weapon_actions[allowed_chain_actions.start_attack[1].action_name]
                    mod._next_light = action_windup.allowed_chain_actions.light_attack.action_name
                    mod._next_heavy = action_windup.allowed_chain_actions.heavy_attack.action_name
                else
                    local action_windup = mod._weapon_actions[allowed_chain_actions.start_attack[2].action_name]
                    mod._next_light = action_windup.allowed_chain_actions.light_attack.action_name
                    mod._next_heavy = action_windup.allowed_chain_actions.heavy_attack.action_name
                end
            else
                local action_windup = mod._weapon_actions[allowed_chain_actions.start_attack.action_name]
                mod._next_light = action_windup.allowed_chain_actions.light_attack.action_name
                mod._next_heavy = action_windup.allowed_chain_actions.heavy_attack.action_name
            end
        elseif allowed_chain_actions.light_attack and allowed_chain_actions.heavy_attack then
            mod._next_light = allowed_chain_actions.light_attack.action_name
            mod._next_heavy = allowed_chain_actions.heavy_attack.action_name
        else
            mod._next_light = ""
            mod._next_heavy = ""
        end
    end
end

-- ##################################################
-- Hooks
-- ##################################################

-- Get melee weapon data and set pattern tables
mod:hook_safe("PlayerUnitWeaponExtension", "on_slot_wielded", function(self, slot_name, t, skip_wield_action)
    -- Determine widget visibility
    if mod._combo_tracker_widget_only_in_training_grounds == true then
        local game_mode_name = Managers.state.game_mode:game_mode_name()
        if game_mode_name ~= "shooting_range" then
            mod._should_draw_widget = false
            return
        end
    end

    -- Calculate _is_melee
    local weapon_action_component = self._weapon_action_component
    local weapon_template = weapon_action_component and WeaponTemplate.current_weapon_template(weapon_action_component)

	mod._is_melee = weapon_template and WeaponTemplate.is_melee(weapon_template)

    -- Return when not in melee
    if not mod._is_melee then
        mod._should_draw_widget = false
        mod._is_foldable_shovel = false
        return
    end

    -- Set widget look
    mod._should_draw_widget = true
    mod._primary_attack_chain = weapon_template.displayed_attacks.primary.attack_chain
    mod._secondary_attack_chain = weapon_template.displayed_attacks.secondary.attack_chain

    local combo_element = mod.get_hud_element()
    if combo_element then
        combo_element:set_background_size(#mod._primary_attack_chain, #mod._secondary_attack_chain)
    end

    -- Get weapon name and action patterns
    local weapon = self._weapons[slot_name]
	local weapon_item = weapon.item

    mod._weapon_name = weapon_item.name
    mod._weapon_actions = Patterns[mod._weapon_name]

    if mod._weapon_actions == nil then
        return
    end

    -- Handle foldable shovels
    if mod._weapon_actions["is_foldable_shovel"] and mod._weapon_actions["is_foldable_shovel"] == true then
        mod._is_foldable_shovel = true
    else
        mod._is_foldable_shovel = false
    end
    -- mod._is_foldable_shovel_folded = false

    -- -- Handle action patterns
    _handle_weapon_pattern(mod._weapon_actions, #mod._primary_attack_chain, #mod._secondary_attack_chain)
end)

-- Update current action
mod:hook_safe("ActionHandler", "start_action", function(self, id, action_objects, action_name, action_params, action_settings, used_input, t, transition_type, condition_func_params, automatic_input, reset_combo_override)
    if not mod._is_melee or not mod._weapon_name or mod._weapon_name == "" then
        return
    end

    -- Update current action
    mod._current_action = action_name

    -- Handle foldable shovels
    if mod._is_foldable_shovel then
        if  not (
            string.find(action_name, "heavy") or
            string.find(action_name, "light") or
            string.find(action_name, "special") or
            action_name == "action_block"
            )
        then
            return
        elseif action_name == "action_special_activate" then
            mod._is_foldable_shovel_folded = not mod._is_foldable_shovel_folded
        elseif string.find(action_name, "special") and mod._weapon_actions[mod._current_action].kind == "sweep" then
            mod._is_foldable_shovel_folded = true
        end
    else
        -- mod._is_foldable_shovel_folded = false
    end

    -- Determine possible next attacks
    _handle_next_attacks(action_name, mod._is_foldable_shovel, mod._is_foldable_shovel_folded)
end)

-- Reset current action
mod:hook_safe("ActionHandler", "_finish_action", function(self, handler_data, reason, data, t, next_action_params)
    if not mod._is_melee then
        return
    end

    if mod._weapon_actions == nil then
        return
    end

    -- Set action to default after quitting melee fighting
    if  reason == "action_complete" and mod._weapon_actions[mod._current_action] or
        reason == "started_sprint" or
        not mod._weapon_actions[mod._current_action]
    then
        if mod._is_foldable_shovel and mod._is_foldable_shovel_folded and mod._weapon_actions["folded_default"] then
            mod._current_action = mod._weapon_actions["folded_default"]
        else
            mod._current_action = mod._weapon_actions["default"]
        end

        _handle_next_attacks(mod._current_action, mod._is_foldable_shovel, mod._is_foldable_shovel_folded)
    end
end)

-- Reset _is_foldable_shovel_folded on successful hit
mod:hook_safe("WeaponSpecialShovels", "process_hit", function (self, t, weapon, action_settings, num_hit_enemies, target_is_alive, target_unit, hit_position, attack_direction, abort_attack, optional_origin_slot)
    mod._is_foldable_shovel_folded = false
    _handle_next_attacks(mod._current_action, mod._is_foldable_shovel, mod._is_foldable_shovel_folded)
end)

-- Add hud element to hud
mod:add_require_path(hud_element_script)
mod:hook(CLASS.UIHud, "init", function(func, self, elements, visibility_groups, params, ...)
	if not table.find_by_key(elements, "class_name", hud_element_class) then
		table.insert(elements, combo_hud_element)
	end

	return func(self, elements, visibility_groups, params, ...)
end)

-- Reset on game session end
mod:hook_safe("StateGameplay", "on_exit", function(self, on_shutdown)
    mod.reset_logic_variables()
end)