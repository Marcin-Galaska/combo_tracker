-- Combo Tracker mod by mroużon. Ver. 2.0.10
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

local mod = get_mod("combo_tracker")

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {
			{
				setting_id  = "combo_tracker_widget_settings_behaviour",
				type        = "group",
				sub_widgets = {
					{
						setting_id = "combo_tracker_widget_fade_inout_speed",
						tooltip = "combo_tracker_widget_fade_inout_speed_desc",
						type = "numeric",
						default_value = 6,
						range = {1, 10}
					},
					{
						setting_id = "combo_tracker_widget_only_in_training_grounds",
						tooltip = "combo_tracker_widget_only_in_training_grounds_desc",
						type = "checkbox",
						default_value = false
					},
					{
						setting_id = "combo_tracker_widget_show_next_attacks",
						tooltip = "combo_tracker_widget_show_next_attacks_desc",
						type = "checkbox",
						default_value = true
					}
				}
			},
			{
				setting_id  = "combo_tracker_widget_settings_default_appearance",
				type        = "group",
				sub_widgets = {
					{
						setting_id = "combo_tracker_widget_default_opacity",
						tooltip = "combo_tracker_widget_default_opacity_desc",
						type = "numeric",
						default_value = 200,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_default_R",
						tooltip = "combo_tracker_widget_default_R_desc",
						type = "numeric",
						default_value = 64,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_default_G",
						tooltip = "combo_tracker_widget_default_G_desc",
						type = "numeric",
						default_value = 64,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_default_B",
						tooltip = "combo_tracker_widget_default_B_desc",
						type = "numeric",
						default_value = 64,
						range = {0, 255}
					}
				}
			},
			{
				setting_id  = "combo_tracker_widget_settings_active_appearance",
				type        = "group",
				sub_widgets = {
					{
						setting_id = "combo_tracker_widget_active_opacity",
						tooltip = "combo_tracker_widget_active_opacity_desc",
						type = "numeric",
						default_value = 200,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_active_R",
						tooltip = "combo_tracker_widget_active_R_desc",
						type = "numeric",
						default_value = 90,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_active_G",
						tooltip = "combo_tracker_widget_active_G_desc",
						type = "numeric",
						default_value = 165,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_active_B",
						tooltip = "combo_tracker_widget_active_B_desc",
						type = "numeric",
						default_value = 83,
						range = {0, 255}
					}
				}
			},
			{
				setting_id  = "combo_tracker_widget_settings_next_appearance",
				type        = "group",
				sub_widgets = {
					{
						setting_id = "combo_tracker_widget_next_opacity",
						tooltip = "combo_tracker_widget_next_opacity_desc",
						type = "numeric",
						default_value = 200,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_next_R",
						tooltip = "combo_tracker_widget_next_R_desc",
						type = "numeric",
						default_value = 245,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_next_G",
						tooltip = "combo_tracker_widget_next_G_desc",
						type = "numeric",
						default_value = 242,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_next_B",
						tooltip = "combo_tracker_widget_next_B_desc",
						type = "numeric",
						default_value = 110,
						range = {0, 255}
					}
				}
			},
			{
				setting_id  = "combo_tracker_widget_settings_frame_appearance",
				type        = "group",
				sub_widgets = {
					{
						setting_id = "combo_tracker_widget_frame_opacity",
						tooltip = "combo_tracker_widget_frame_opacity_desc",
						type = "numeric",
						default_value = 255,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_frame_R",
						tooltip = "combo_tracker_widget_frame_R_desc",
						type = "numeric",
						default_value = 169,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_frame_G",
						tooltip = "combo_tracker_widget_frame_G_desc",
						type = "numeric",
						default_value = 191,
						range = {0, 255}
					},
					{
						setting_id = "combo_tracker_widget_frame_B",
						tooltip = "combo_tracker_widget_frame_B_desc",
						type = "numeric",
						default_value = 153,
						range = {0, 255}
					}
				}
			},
			{
				setting_id  = "combo_tracker_widget_settings_position",
				type        = "group",
				sub_widgets = {
					{
						setting_id = "combo_tracker_widget_vertical_offset",
						tooltip = "combo_tracker_widget_vertical_offset_desc",
						type = "numeric",
						default_value = 0,
						range = {-1325, 675}
					},
					{
						setting_id = "combo_tracker_widget_horizontal_offset",
						tooltip = "combo_tracker_widget_horizontal_offset_desc",
						type = "numeric",
						default_value = 0,
						range = {-1800, 1800}
					}
				}
			}
		}
	}
}

