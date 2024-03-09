return {
    ["default"] = "action_melee_start_left",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
				action_name = "action_left_down_light",
				chain_time = 0
			},
			heavy_attack = {
				action_name = "action_heavy_1",
				chain_time = 0.6
			},
			special_action = {
				action_name = "action_toggle_special"
			}
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
				action_name = "action_right_diagonal_light",
				chain_time = 0
			},
			heavy_attack = {
				action_name = "action_heavy_2",
				chain_time = 0.55
			},
			special_action = {
				action_name = "action_toggle_special"
			}
        }
    },
    ["action_left_down_light"] = {
        name = "action_left_down_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.6
			},
			special_action = {
				action_name = "action_toggle_special",
				chain_time = 0.45
			}
        }
    },
    ["action_heavy_1"] = {
        name = "action_left_heavy",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.54
			},
			special_action = {
				action_name = "action_toggle_special"
			}
        }
    },
    ["action_right_diagonal_light"] = {
        name = "action_right_diagonal_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.74
			},
			special_action = {
				action_name = "action_toggle_special"
			}
        }
    },
    ["action_heavy_2"] = {
        name = "action_right_heavy",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.53
			},
			special_action = {
				action_name = "action_toggle_special",
				chain_time = 0.35
			}
        }
    },
    ["action_right_light_pushfollow"] = {
        name = "action_right_light_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.49
			},
			special_action = {
				action_name = "action_toggle_special",
				chain_time = 0.4
			}
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
			special_action = {
				action_name = "action_toggle_special",
				chain_time = 0.4
			},
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.5
			}
        }
    },
    ["action_toggle_special"] = {
        name = "action_toggle_special",
        kind = "toggle_special",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.6
			}
        }
    }
}