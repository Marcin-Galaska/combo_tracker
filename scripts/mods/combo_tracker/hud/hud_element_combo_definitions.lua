-- Combo Tracker mod by mroużon. Ver. 2.0.10
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

local mod = get_mod("combo_tracker")

local Settings = mod:io_dofile("combo_tracker/scripts/mods/combo_tracker/hud/hud_element_combo_settings")

local UIWorkspaceSettings = mod:original_require("scripts/settings/ui/ui_workspace_settings")
local UIWidget = mod:original_require("scripts/managers/ui/ui_widget")
local UIFontSettings = mod:original_require("scripts/managers/ui/ui_font_settings")

local area_size = Settings.area_size
local center_offset = Settings.center_offset
local gauge_spacing = Settings.gauge_spacing

local scenegraph_definition = {
	screen = UIWorkspaceSettings.screen,
	area = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = area_size,
		position = {0, center_offset, 0}
	},
	gauge = {
		vertical_alignment = "top",
		parent = "area",
		horizontal_alignment = "center",
		size = {252, 10},
		position = {0, 6, 1}
	},
	combo_icon_primary = {
		vertical_alignment = "center",
		parent = "area",
		horizontal_alignment = "center",
		size = {nil, nil},
		position = {-20, -50, 1}
	},
	combo_icon_secondary = {
		vertical_alignment = "center",
		parent = "area",
		horizontal_alignment = "center",
		size = {nil, nil},
		position = {-20, 30, 1}
	}
}

local name_text_primary_style = table.clone(UIFontSettings.body_small)
name_text_primary_style.offset = {
	0 + mod._combo_tracker_widget_horizontal_offset,
	10 + mod._combo_tracker_widget_vertical_offset,
	3
}
name_text_primary_style.size = {500, 30}
name_text_primary_style.horizontal_alignment = "center"
name_text_primary_style.vertical_alignment = "top"
name_text_primary_style.text_horizontal_alignment = "center"
name_text_primary_style.text_vertical_alignment = "top"
name_text_primary_style.text_color = mod._combo_tracker_widget_frame_appearance
name_text_primary_style.drop_shadow = false

local name_text_secondary_style = table.clone(name_text_primary_style)
name_text_secondary_style.offset = {
	0 + mod._combo_tracker_widget_horizontal_offset,
	10 + gauge_spacing + mod._combo_tracker_widget_vertical_offset,
	3
}

local widget_definitions = {
	gauge = UIWidget.create_definition({
		{
			value_id = "name_text_primary",
			style_id = "name_text_primary",
			pass_type = "text",
			value = Utf8.upper(mod:localize("hud_display_name_primary")),
			style = name_text_primary_style
		},
		{
			value_id = "name_text_secondary",
			style_id = "name_text_secondary",
			pass_type = "text",
			value = Utf8.upper(mod:localize("hud_display_name_secondary")),
			style = name_text_secondary_style
		},
		{
			value = "content/ui/materials/hud/stamina_gauge",
			style_id = "background_primary",
			pass_type = "texture",
			style = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				offset = {
					0 + mod._combo_tracker_widget_horizontal_offset,
					0 + mod._combo_tracker_widget_vertical_offset,
					1
				},
				color = mod._combo_tracker_widget_frame_appearance
			}
		},
		{
			value = "content/ui/materials/hud/stamina_gauge",
			style_id = "background_secondary",
			pass_type = "texture",
			style = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				offset = {
					0 + mod._combo_tracker_widget_horizontal_offset,
					gauge_spacing + mod._combo_tracker_widget_vertical_offset,
					1
				},
				color = mod._combo_tracker_widget_frame_appearance
			}
		}
	}, "gauge")
}

local combo_icon_primary = UIWidget.create_definition({
	{
		value = "content/ui/materials/icons/weapons/actions/melee_hand",
		pass_type = "texture",
		value_id = "combo_icon_primary",
		style_id = "combo_icon_primary",
		style = {
			size = {
				40,
				40
			},
			offset = {
				0 + mod._combo_tracker_widget_horizontal_offset,
				0 + mod._combo_tracker_widget_vertical_offset,
				3
			},
			color = mod._combo_tracker_widget_default_appearance
		}
	}
}, "combo_icon_primary")

local combo_icon_secondary = UIWidget.create_definition({
	{
		value = "content/ui/materials/icons/weapons/actions/melee_hand",
		pass_type = "texture",
		value_id = "combo_icon_secondary",
		style_id = "combo_icon_secondary",
		style = {
			size = {
				40,
				40
			},
			offset = {
				0 + mod._combo_tracker_widget_horizontal_offset,
				0 + mod._combo_tracker_widget_vertical_offset,
				3
			},
			color = mod._combo_tracker_widget_default_appearance
		}
	}
}, "combo_icon_secondary")

return {
	combo_icon_primary_definition = combo_icon_primary,
	combo_icon_secondary_definition = combo_icon_secondary,
	widget_definitions = widget_definitions,
	scenegraph_definition = scenegraph_definition
}