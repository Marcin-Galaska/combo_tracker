-- Combo Tracker mod by mroużon. Ver. 2.0.10
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

local mod = get_mod("combo_tracker")

local Definitions = mod:io_dofile("combo_tracker/scripts/mods/combo_tracker/hud/hud_element_combo_definitions")
local Settings = mod:io_dofile("combo_tracker/scripts/mods/combo_tracker/hud/hud_element_combo_settings")

local UIWidget = mod:original_require("scripts/managers/ui/ui_widget")

local HudElementCombo = class("HudElementCombo", "HudElementBase")

local gauge_spacing = Settings.gauge_spacing
local weapon_action_type_icons = {
    ["tank"] = "content/ui/materials/icons/weapons/actions/tank",
    ["ninja_fencer"] = "content/ui/materials/icons/weapons/actions/ninjafencer",
    ["linesman"] = "content/ui/materials/icons/weapons/actions/linesman",
    ["smiter"] = "content/ui/materials/icons/weapons/actions/smiter"
}

HudElementCombo.on_resolution_modified = function (self)
	HudElementCombo.super.on_resolution_modified(self)
end

HudElementCombo.init = function (self, parent, draw_layer, start_scale)
	HudElementCombo.super.init(self, parent, draw_layer, start_scale, Definitions)

	self._combo_icon_primary_widget = self:_create_widget("combo_icon_primary", Definitions.combo_icon_primary_definition)
	self._combo_icon_secondary_widget = self:_create_widget("combo_icon_secondary", Definitions.combo_icon_secondary_definition)

	self:set_background_size(#mod._primary_attack_chain, #mod._secondary_attack_chain)
end

HudElementCombo.destroy = function (self, ui_renderer)
	HudElementCombo.super.destroy(self, ui_renderer)
end

HudElementCombo.update = function (self, dt, t, ui_renderer, render_settings, input_service)
	HudElementCombo.super.update(self, dt, t, ui_renderer, render_settings, input_service)

	self:_update_visibility(dt)
end

HudElementCombo._update_visibility = function (self, dt)
	local draw = mod._is_melee and mod._should_draw_widget

	local alpha_speed = mod._combo_tracker_widget_fade_inout_speed
	local alpha_multiplier = self._alpha_multiplier or 0

	if draw then
		alpha_multiplier = math.min(alpha_multiplier + dt * alpha_speed, 1)
	else
		alpha_multiplier = math.max(alpha_multiplier - dt * alpha_speed, 0)
	end

	self._alpha_multiplier = alpha_multiplier
end

HudElementCombo._draw_widgets = function (self, dt, t, input_service, ui_renderer, render_settings)
	if self._alpha_multiplier ~= 0 then
		local previous_alpha_multiplier = render_settings.alpha_multiplier
		render_settings.alpha_multiplier = self._alpha_multiplier

		HudElementCombo.super._draw_widgets(self, dt, t, input_service, ui_renderer, render_settings)
		self:_draw_icons(dt, t, ui_renderer)

		render_settings.alpha_multiplier = previous_alpha_multiplier
	end
end

HudElementCombo._draw_icons = function (self, dt, t, ui_renderer)
	local primary_attack_chain = mod._primary_attack_chain
	local secondary_attack_chain = mod._secondary_attack_chain

	if not mod._is_melee or not primary_attack_chain or not secondary_attack_chain then
		return
	end

	local widget_primary = self._combo_icon_primary_widget
	local spacing = Settings.spacing
	local x_offset = spacing * (#primary_attack_chain - 1) * 0.5

	for i = #mod._primary_attack_chain, 1, -1 do
		if mod._light_sweeps[i] == mod._current_action then
			widget_primary.style.combo_icon_primary.color = mod._combo_tracker_widget_active_appearance
		elseif mod._combo_tracker_widget_show_next_attacks and mod._light_sweeps[i] == mod._next_light then
			widget_primary.style.combo_icon_primary.color = mod._combo_tracker_widget_next_appearance
		else
			widget_primary.style.combo_icon_primary.color = mod._combo_tracker_widget_default_appearance
		end

		widget_primary.content.combo_icon_primary = weapon_action_type_icons[mod._primary_attack_chain[i]]
		widget_primary.offset[1] = x_offset

		UIWidget.draw(widget_primary, ui_renderer)

		x_offset = x_offset - spacing
	end

	local widget_secondary = self._combo_icon_secondary_widget
	x_offset = spacing * (#secondary_attack_chain - 1) * 0.5

	for i = #mod._secondary_attack_chain, 1, -1 do
		if mod._heavy_sweeps[i] == mod._current_action then
			widget_secondary.style.combo_icon_secondary.color = mod._combo_tracker_widget_active_appearance
		elseif mod._combo_tracker_widget_show_next_attacks and mod._heavy_sweeps[i] == mod._next_heavy then
			widget_secondary.style.combo_icon_secondary.color = mod._combo_tracker_widget_next_appearance
		else
			widget_secondary.style.combo_icon_secondary.color = mod._combo_tracker_widget_default_appearance
		end

		widget_secondary.content.combo_icon_secondary = weapon_action_type_icons[mod._secondary_attack_chain[i]]
		widget_secondary.offset[1] = x_offset

		UIWidget.draw(widget_secondary, ui_renderer)

		x_offset = x_offset - spacing
	end
end

HudElementCombo.set_background_size = function (self, primary_attack_chain_length, secondary_attack_chain_length)
	local primary_extra_width = (primary_attack_chain_length - 2) * 60
	local secondary_extra_width = (secondary_attack_chain_length - 2) * 60

	self._widgets_by_name.gauge.style.background_primary.size = {122 + primary_extra_width, 10}
	self._widgets_by_name.gauge.style.background_secondary.size = {122 + secondary_extra_width, 10}
end

HudElementCombo.set_offset = function(self, vertical, horizontal)
	self._widgets_by_name.gauge.style.name_text_primary.offset = {
		0 + horizontal,
		10 + vertical,
		3
	}

	self._widgets_by_name.gauge.style.name_text_secondary.offset = {
		0 + horizontal,
		10 + gauge_spacing + vertical,
		3
	}

	self._widgets_by_name.gauge.style.background_primary.offset = {
		0 + horizontal,
		0 + vertical,
		1
	}

	self._widgets_by_name.gauge.style.background_secondary.offset = {
		0 + horizontal,
		gauge_spacing + vertical,
		1
	}

	self._widgets_by_name.combo_icon_primary.style.combo_icon_primary.offset = {
		0 + horizontal,
		0 + vertical,
		3
	}

	self._widgets_by_name.combo_icon_secondary.style.combo_icon_secondary.offset = {
		0 + horizontal,
		0 + vertical,
		3
	}
end

HudElementCombo.set_frame_appearance = function(self, appearance)
	self._widgets_by_name.gauge.style.name_text_primary.text_color = appearance
	self._widgets_by_name.gauge.style.name_text_secondary.text_color = appearance
	self._widgets_by_name.gauge.style.background_primary.color = appearance
	self._widgets_by_name.gauge.style.background_secondary.color = appearance
end

return HudElementCombo