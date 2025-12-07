-- Combo Tracker mod by mroużon. Ver. 2.0.10
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

-- Chinese localization by deluxghost

return {
	mod_name = {
		en = "Combo Tracker",
		pl = "Wskaźnik Combo",
		["zh-cn"] = "连招追踪器",
	},
	mod_description = {
		en = "Adds an in-game widget showing the combo pattern of drawn melee weapon.\n\nAuthor: mroużon",
		pl = "Dodaje widżet śledzący combo wyposażonej broni białej.\n\nAutor: mroużon",
		["zh-cn"] = "添加一个游戏内组件，显示当前装备近战武器的连招模组。\n\n作者：mroużon",
	},
	combo_tracker_widget_settings_behaviour = {
		en = "Widget Behaviour",
		pl = "Zachowanie wskaźnika",
		["zh-cn"] = "组件行为",
	},
	combo_tracker_widget_fade_inout_speed = {
		en = "Fade In/Out Speed",
		pl = "Prędkość Pojawiania Się/Zanikania",
		["zh-cn"] = "淡入淡出速度",
	},
	combo_tracker_widget_fade_inout_speed_desc = {
		en = "How quickly the widget will fade in and out.",
		pl = "Jak szybko wskaźnik będzie się pojawiał i znikał.",
		["zh-cn"] = "组件以多快的速度淡入淡出",
	},
	combo_tracker_widget_only_in_training_grounds = {
		en = "Only In Psykhanium",
		pl = "Tylko W Psikhanium",
		["zh-cn"] = "仅在灵能室",
	},
	combo_tracker_widget_only_in_training_grounds_desc = {
		en = "Whether the widget should be only visible in the Psykhanium.",
		pl = "Czy wskaźnik powinien być widoczny tylko w Psikhanium.",
		["zh-cn"] = "组件是否应该仅在灵能室内可见。",
	},
	combo_tracker_widget_show_next_attacks = {
		en = "Show Possible Next Attacks",
		pl = "Wyświetl Następne Możliwe Ataki",
		["zh-cn"] = "显示可能的下次攻击",
	},
	combo_tracker_widget_show_next_attacks_desc = {
		en = "Whether the widget should highlight which attacks are possible to combo into next.",
		pl = "Czy wskaźnik powinien podświetlać ataki następne w combo.",
		["zh-cn"] = "组件是否应该高亮显示下一次可能的连招。",
	},
	combo_tracker_widget_settings_default_appearance = {
		en = "Default Attack Icon Style",
		pl = "Styl Domyślnych Ikon",
		["zh-cn"] = "默认攻击图标样式",
	},
	combo_tracker_widget_default_opacity = {
		en = "Opacity",
		pl = "Przezroczystość",
		["zh-cn"] = "不透明度",
	},
	combo_tracker_widget_default_opacity_desc = {
		en = "Opacity of currently unreachable attacks' icons.",
		pl = "Przezroczystość ikon aktualnie niedostępnych ataków.",
		["zh-cn"] = "当前无法触发的攻击模组图标不透明度。",
	},
	combo_tracker_widget_default_R = {
		en = "Red",
		pl = "Czerwony",
		["zh-cn"] = "红色",
	},
	combo_tracker_widget_default_R_desc = {
		en = "Intensity of the colour red of currently unreachable attacks' icons.",
		pl = "Intensywność koloru czerwonego ikon aktualnie niedostępnych ataków.",
		["zh-cn"] = "当前无法触发的攻击模组图标红色强度。",
	},
	combo_tracker_widget_default_G = {
		en = "Green",
		pl = "Zielony",
		["zh-cn"] = "绿色",
	},
	combo_tracker_widget_default_G_desc = {
		en = "Intensity of the colour green of currently unreachable attacks' icons.",
		pl = "Intensywność koloru zielonego ikon aktualnie niedostępnych ataków.",
		["zh-cn"] = "当前无法触发的攻击模组图标绿色强度。",
	},
	combo_tracker_widget_default_B = {
		en = "Blue",
		pl = "Niebieski",
		["zh-cn"] = "蓝色",
	},
	combo_tracker_widget_default_B_desc = {
		en = "Intensity of the colour blue of currently unreachable attacks' icons.",
		pl = "Intensywność koloru niebieskiego ikon aktualnie niedostępnych ataków.",
		["zh-cn"] = "当前无法触发的攻击模组图标蓝色强度。",
	},
	combo_tracker_widget_settings_active_appearance = {
		en = "Active Attack Icon Style",
		pl = "Styl Ikon Aktualnego Ataku",
		["zh-cn"] = "活跃攻击图标样式",
	},
	combo_tracker_widget_active_opacity = {
		en = "Opacity",
		pl = "Przezroczystość",
		["zh-cn"] = "不透明度",
	},
	combo_tracker_widget_active_opacity_desc = {
		en = "Opacity of currently performed attack's icon.",
		pl = "Przezroczystość ikon aktualnie wykonywanego ataku.",
		["zh-cn"] = "当前正在进行的攻击模组图标不透明度。",
	},
	combo_tracker_widget_active_R = {
		en = "Red",
		pl = "Czerwony",
		["zh-cn"] = "红色",
	},
	combo_tracker_widget_active_R_desc = {
		en = "Intensity of the colour red of currently performed attack's icon.",
		pl = "Intensywność koloru czerwonego ikony aktualnie wykonywanego ataku.",
		["zh-cn"] = "当前正在进行的攻击模组图标红色强度。",
	},
	combo_tracker_widget_active_G = {
		en = "Green",
		pl = "Zielony",
		["zh-cn"] = "绿色",
	},
	combo_tracker_widget_active_G_desc = {
		en = "Intensity of the colour green of currently performed attack's icon.",
		pl = "Intensywność koloru zielonego ikony aktualnie wykonywanego ataku.",
		["zh-cn"] = "当前正在进行的攻击模组图标绿色强度。",
	},
	combo_tracker_widget_active_B = {
		en = "Blue",
		pl = "Niebieski",
		["zh-cn"] = "蓝色",
	},
	combo_tracker_widget_active_B_desc = {
		en = "Intensity of the colour blue of currently performed attack's icon.",
		pl = "Intensywność koloru niebieskiego ikony aktualnie wykonywanego ataku.",
		["zh-cn"] = "当前正在进行的攻击模组图标蓝色强度。",
	},
	combo_tracker_widget_settings_next_appearance = {
		en = "Next Attack Icon Style",
		pl = "Styl Ikon Następnych Ataków",
		["zh-cn"] = "下次攻击图标样式",
	},
	combo_tracker_widget_next_opacity = {
		en = "Opacity",
		pl = "Przezroczystość",
		["zh-cn"] = "不透明度",
	},
	combo_tracker_widget_next_opacity_desc = {
		en = "Opacity of possible next attacks' icons.",
		pl = "Przezroczystość ikon potencjalnych następnych ataków.",
		["zh-cn"] = "下次可能进行的攻击模组图标不透明度。",
	},
	combo_tracker_widget_next_R = {
		en = "Red",
		pl = "Czerwony",
		["zh-cn"] = "红色",
	},
	combo_tracker_widget_next_R_desc = {
		en = "Intensity of the colour red of possible next attacks' icons.",
		pl = "Intensywność koloru czerwonego ikon potencjalnych następnych ataków.",
		["zh-cn"] = "下次可能进行的攻击模组图标红色强度。",
	},
	combo_tracker_widget_next_G = {
		en = "Green",
		pl = "Zielony",
		["zh-cn"] = "绿色",
	},
	combo_tracker_widget_next_G_desc = {
		en = "Intensity of the colour green of possible next attacks' icons.",
		pl = "Intensywność koloru zielonego ikon potencjalnych następnych ataków.",
		["zh-cn"] = "下次可能进行的攻击模组图标绿色强度。",
	},
	combo_tracker_widget_next_B = {
		en = "Blue",
		pl = "Niebieski",
		["zh-cn"] = "蓝色",
	},
	combo_tracker_widget_next_B_desc = {
		en = "Intensity of the colour blue of possible next attacks' icons.",
		pl = "Intensywność koloru niebieskiego ikon potencjalnych następnych ataków.",
		["zh-cn"] = "下次可能进行的攻击模组图标蓝色强度。",
	},
	combo_tracker_widget_settings_frame_appearance = {
		en = "Frame Style",
		pl = "Styl Ramki",
		["zh-cn"] = "边框风格",
	},
	combo_tracker_widget_frame_opacity = {
		en = "Opacity",
		pl = "Przezroczystość",
		["zh-cn"] = "不透明度",
	},
	combo_tracker_widget_frame_opacity_desc = {
		en = "Opacity of the widget frame.",
		pl = "Przezroczystość ramki wskaźnika.",
		["zh-cn"] = "组件边框的不透明度。",
	},
	combo_tracker_widget_frame_R = {
		en = "Red",
		pl = "Czerwony",
		["zh-cn"] = "红色",
	},
	combo_tracker_widget_frame_R_desc = {
		en = "Intensity of the colour red of the widget frame.",
		pl = "Intensywność koloru czerwonego ramki wskaźnika.",
		["zh-cn"] = "组件边框的红色强度。",
	},
	combo_tracker_widget_frame_G = {
		en = "Green",
		pl = "Zielony",
		["zh-cn"] = "绿色",
	},
	combo_tracker_widget_frame_G_desc = {
		en = "Intensity of the colour green of the widget frame.",
		pl = "Intensywność koloru zielonego ramki wskaźnika.",
		["zh-cn"] = "组件边框的绿色强度。",
	},
	combo_tracker_widget_frame_B = {
		en = "Blue",
		pl = "Niebieski",
		["zh-cn"] = "蓝色",
	},
	combo_tracker_widget_frame_B_desc = {
		en = "Intensity of the colour blue of the widget frame.",
		pl = "Intensywność koloru niebieskiego ramki wskaźnika.",
		["zh-cn"] = "组件边框的蓝色强度。",
	},
	combo_tracker_widget_settings_position = {
		en = "Widget Position",
		pl = "Pozycja Wskaźnika",
		["zh-cn"] = "组件位置",
	},
	combo_tracker_widget_vertical_offset = {
		en = "Vertical Offset",
		pl = "Przesunięcie Pionowe",
		["zh-cn"] = "垂直偏移量",
	},
	combo_tracker_widget_vertical_offset_desc = {
		en = "Offset applied to the widget in the Y axis.",
		pl = "Przesunięcie wskaźnika w osi Y.",
		["zh-cn"] = "组件在 Y 轴方向的偏移量。",
	},
	combo_tracker_widget_horizontal_offset = {
		en = "Horizontal Offset",
		pl = "Przesunięcie Poziome",
		["zh-cn"] = "水平偏移量",
	},
	combo_tracker_widget_horizontal_offset_desc = {
		en = "Offset applied to the widget in the X axis.",
		pl = "Przesunięcie wskaźnika w osi X.",
		["zh-cn"] = "组件在 X 轴方向的偏移量。",
	},
	hud_display_name_primary = {
		en = "Light Attack",
		pl = "Szybki Atak",
		["zh-cn"] = "轻攻击",
	},
	hud_display_name_secondary = {
		en = "Heavy Attack",
		pl = "Ciężki Atak",
		["zh-cn"] = "重攻击",
	}
}
