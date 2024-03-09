-- Combo Tracker mod by mroużon. Ver. 2.0.1
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

return {
	mod_name = {
		en = "Combo Tracker",
		pl = "Wskaźnik Combo"
	},
	mod_description = {
		en = "Adds an in-game widget showing the combo pattern of drawn melee weapon.\n\nAuthor: mroużon",
		pl = "Dodaje widżet śledzący combo wyposażonej broni białej.\n\nAutor: mroużon"
	},
	combo_tracker_widget_settings_behaviour = {
		en = "Widget Behaviour",
		pl = "Zachowanie wskaźnika"
	},
	combo_tracker_widget_fade_inout_speed = {
		en = "Fade In/Out Speed",
		pl = "Prędkość Pojawiania Się/Zanikania"
	},
	combo_tracker_widget_fade_inout_speed_desc = {
		en = "How quickly the widget will fade in and out.",
		pl = "Jak szybko wskaźnik będzie się pojawiał i znikał."
	},
	combo_tracker_widget_only_in_training_grounds = {
		en = "Only In Psykhanium",
		pl = "Tylko W Psikhanium"
	},
	combo_tracker_widget_only_in_training_grounds_desc = {
		en = "Whether the widget should be only visible in the Psykhanium.",
		pl = "Czy wskaźnik powinien być widoczny tylko w Psikhanium."
	},
	combo_tracker_widget_show_next_attacks = {
		en = "Show Possible Next Attacks",
		pl = "Wyświetl Następne Możliwe Ataki"
	},
	combo_tracker_widget_show_next_attacks_desc = {
		en = "Whether the widget should highlight which attacks are possible to combo into next.",
		pl = "Czy wskaźnik powinien podświetlać ataki następne w combo."
	},
	combo_tracker_widget_settings_default_appearance = {
		en = "Default Attack Icon Style",
		pl = "Styl Domyślnych Ikon"
	},
	combo_tracker_widget_default_opacity = {
		en = "Opacity",
		pl = "Przezroczystość"
	},
	combo_tracker_widget_default_opacity_desc = {
		en = "Opacity of currently unreachable attacks' icons.",
		pl = "Przezroczystość ikon aktualnie niedostępnych ataków."
	},
	combo_tracker_widget_default_R = {
		en = "Red",
		pl = "Czerwony"
	},
	combo_tracker_widget_default_R_desc = {
		en = "Intensity of the colour red of currently unreachable attacks' icons.",
		pl = "Intensywność koloru czerwonego ikon aktualnie niedostępnych ataków."
	},
	combo_tracker_widget_default_G = {
		en = "Green",
		pl = "Zielony"
	},
	combo_tracker_widget_default_G_desc = {
		en = "Intensity of the colour green of currently unreachable attacks' icons.",
		pl = "Intensywność koloru zielonego ikon aktualnie niedostępnych ataków."
	},
	combo_tracker_widget_default_B = {
		en = "Blue",
		pl = "Niebieski"
	},
	combo_tracker_widget_default_B_desc = {
		en = "Intensity of the colour blue of currently unreachable attacks' icons.",
		pl = "Intensywność koloru niebieskiego ikon aktualnie niedostępnych ataków."
	},
	combo_tracker_widget_settings_active_appearance = {
		en = "Active Attack Icon Style",
		pl = "Styl Ikon Aktualnego Ataku"
	},
	combo_tracker_widget_active_opacity = {
		en = "Opacity",
		pl = "Przezroczystość"
	},
	combo_tracker_widget_active_opacity_desc = {
		en = "Opacity of currently performed attack's icon.",
		pl = "Przezroczystość ikon aktualnie wykonywanego ataku."
	},
	combo_tracker_widget_active_R = {
		en = "Red",
		pl = "Czerwony"
	},
	combo_tracker_widget_active_R_desc = {
		en = "Intensity of the colour red of currently performed attack's icon.",
		pl = "Intensywność koloru czerwonego ikony aktualnie wykonywanego ataku."
	},
	combo_tracker_widget_active_G = {
		en = "Green",
		pl = "Zielony"
	},
	combo_tracker_widget_active_G_desc = {
		en = "Intensity of the colour green of currently performed attack's icon.",
		pl = "Intensywność koloru zielonego ikony aktualnie wykonywanego ataku."
	},
	combo_tracker_widget_active_B = {
		en = "Blue",
		pl = "Niebieski"
	},
	combo_tracker_widget_active_B_desc = {
		en = "Intensity of the colour blue of currently performed attack's icon.",
		pl = "Intensywność koloru niebieskiego ikony aktualnie wykonywanego ataku."
	},
	combo_tracker_widget_settings_next_appearance = {
		en = "Next Attack Icon Style",
		pl = "Styl Ikon Następnych Ataków"
	},
	combo_tracker_widget_next_opacity = {
		en = "Opacity",
		pl = "Przezroczystość"
	},
	combo_tracker_widget_next_opacity_desc = {
		en = "Opacity of possible next attacks' icons.",
		pl = "Przezroczystość ikon potencjalnych następnych ataków."
	},
	combo_tracker_widget_next_R = {
		en = "Red",
		pl = "Czerwony"
	},
	combo_tracker_widget_next_R_desc = {
		en = "Intensity of the colour red of possible next attacks' icons.",
		pl = "Intensywność koloru czerwonego ikon potencjalnych następnych ataków."
	},
	combo_tracker_widget_next_G = {
		en = "Green",
		pl = "Zielony"
	},
	combo_tracker_widget_next_G_desc = {
		en = "Intensity of the colour green of possible next attacks' icons.",
		pl = "Intensywność koloru zielonego ikon potencjalnych następnych ataków."
	},
	combo_tracker_widget_next_B = {
		en = "Blue",
		pl = "Niebieski"
	},
	combo_tracker_widget_next_B_desc = {
		en = "Intensity of the colour blue of possible next attacks' icons.",
		pl = "Intensywność koloru niebieskiego ikon potencjalnych następnych ataków."
	},
	combo_tracker_widget_settings_frame_appearance = {
		en = "Frame Style",
		pl = "Styl Ramki"
	},
	combo_tracker_widget_frame_opacity = {
		en = "Opacity",
		pl = "Przezroczystość"
	},
	combo_tracker_widget_frame_opacity_desc = {
		en = "Opacity of the widget frame.",
		pl = "Przezroczystość ramki wskaźnika."
	},
	combo_tracker_widget_frame_R = {
		en = "Red",
		pl = "Czerwony"
	},
	combo_tracker_widget_frame_R_desc = {
		en = "Intensity of the colour red of the widget frame.",
		pl = "Intensywność koloru czerwonego ramki wskaźnika."
	},
	combo_tracker_widget_frame_G = {
		en = "Green",
		pl = "Zielony"
	},
	combo_tracker_widget_frame_G_desc = {
		en = "Intensity of the colour green of the widget frame.",
		pl = "Intensywność koloru zielonego ramki wskaźnika."
	},
	combo_tracker_widget_frame_B = {
		en = "Blue",
		pl = "Niebieski"
	},
	combo_tracker_widget_frame_B_desc = {
		en = "Intensity of the colour blue of the widget frame.",
		pl = "Intensywność koloru niebieskiego ramki wskaźnika."
	},
	combo_tracker_widget_settings_position = {
		en = "Widget Position",
		pl = "Pozycja Wskaźnika"
	},
	combo_tracker_widget_vertical_offset = {
		en = "Vertical Offset",
		pl = "Przesunięcie Pionowe"
	},
	combo_tracker_widget_vertical_offset_desc = {
		en = "Offset applied to the widget in the Y axis.",
		pl = "Przesunięcie wskaźnika w osi Y."
	},
	combo_tracker_widget_horizontal_offset = {
		en = "Horizontal Offset",
		pl = "Przesunięcie Poziome"
	},
	combo_tracker_widget_horizontal_offset_desc = {
		en = "Offset applied to the widget in the X axis.",
		pl = "Przesunięcie wskaźnika w osi X."
	},
	hud_display_name_primary = {
		en = "Light Attack",
		pl = "Szybki Atak"
	},
	hud_display_name_secondary = {
		en = "Heavy Attack",
		pl = "Ciężki Atak"
	}
}
