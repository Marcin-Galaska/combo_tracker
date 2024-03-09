return {
    ["default"] = "action_melee_start_left",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_left_diagonal_light"
            },
            heavy_attack = {
                action_name = "action_left_heavy",
                chain_time = 0.45
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_right_diagonal_light"
            },
            heavy_attack = {
                action_name = "action_right_heavy",
                chain_time = 0.45
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_left_2"] = {
        name = "action_melee_start_left_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_left_down_light",
                chain_time = 0
            },
            heavy_attack = {
                action_name = "action_left_heavy",
                chain_time = 0.4
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_right_2"] = {
        name = "action_melee_start_right_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_right_diagonal_light_2"
            },
            heavy_attack = {
                action_name = "action_right_heavy",
                chain_time = 0.45
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_left_diagonal_light"] = {
        name = "action_left_diagonal_light",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
                chain_time = 0.35
            },
            special_action = {
                action_name = "action_activate_special",
                chain_time = 0.3
            }
        }
    },
    ["action_left_heavy"] = {
        name = "action_left_heavy",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
                chain_time = 0.6
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_right_diagonal_light"] = {
        name = "action_right_diagonal_light",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
                chain_time = 0.55
            },
            special_action = {
                action_name = "action_activate_special",
                chain_time = 0.3
            }
        }
    },
    ["action_right_heavy"] = {
        name = "action_right_heavy",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
                chain_time = 0.5
            },
            special_action = {
                action_name = "action_activate_special",
                chain_time = 0.3
            }
        }
    },
    ["action_left_down_light"] = {
        name = "action_left_down_light",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2",
                chain_time = 0.4
            },
            special_action = {
                action_name = "action_activate_special",
                chain_time = 0.3
            }
        }
    },
    ["action_right_diagonal_light_2"] = {
        name = "action_right_diagonal_light_2",
        kind = "sweep",
        allowed_chain_actions = {
			push_follow_up = {
				action_name = "action_find_target",
				chain_time = 0.1
			},
			special_action = {
				action_name = "action_activate_special",
				chain_time = 0.4
			},
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.45
			}
        }
    },
    ["action_find_target"] = {
        name = "action_find_target",
        kind = "target_finder",
        allowed_chain_actions = {
			fling_target = {
				action_name = "action_fling_target",
				chain_time = 0.1
			}
        }
    },
    ["action_fling_target"] = {
        name = "action_fling_target",
        kind = "damage_target",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.35
			}
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
                chain_time = 0.45
            },
            special_action = {
                action_name = "action_activate_special",
                chain_time = 0.4
            }
        }
    },
    ["action_activate_special"] = {
        name = "action_activate_special",
        kind = "activate_special",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left",
                chain_time = 0.35
            }
        }
    }
}