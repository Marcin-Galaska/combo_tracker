return {
    ["default"] = "action_melee_start_left",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_left_light",
                chain_time = 0
            },
            heavy_attack = {
                action_name = "action_left_heavy",
                chain_time = 0.5
            },
            special_action = {
                action_name = "action_attack_special"
            }
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_right_light",
                chain_time = 0
            },
            heavy_attack = {
                action_name = "action_right_heavy",
                chain_time = 0.375
            },
            special_action = {
                action_name = "action_attack_special"
            }
        }
    },
    ["action_melee_start_left_2"] = {
        name = "action_melee_start_left_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_left_light_2",
                chain_time = 0
            },
            heavy_attack = {
                action_name = "action_left_heavy",
                chain_time = 0.46
            },
            special_action = {
                action_name = "action_attack_special",
                chain_time = 0.35
            }
        }
    },
    ["action_left_light"] = {
        name = "action_left_light",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
                chain_time = 0.34
            },
            special_action = {
                action_name = "action_attack_special",
                chain_time = 0.34
            }
        }
    },
    ["action_left_heavy"] = {
        name = "action_left_heavy",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
                chain_time = 0.24
            },
            special_action = {
                action_name = "action_attack_special",
                chain_time = 0.24
            }
        }
    },
    ["action_right_light"] = {
        name = "action_right_light",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
                chain_time = 0.33
            },
            special_action = {
                action_name = "action_attack_special",
                chain_time = 0.33
            }
        }
    },
    ["action_right_heavy"] = {
        name = "action_right_heavy",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
                chain_time = 0.4
            },
            special_action = {
                action_name = "action_attack_special",
                chain_time = 0.3
            }
        }
    },
    ["action_left_light_2"] = {
        name = "action_left_light_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
                chain_time = 0.52
            },
            special_action = {
                action_name = "action_attack_special",
                chain_time = 0.4
            }
        }
    },
    ["action_right_light_pushfollow"] = {
        name = "action_right_light_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.4
			},
			special_action = {
				action_name = "action_attack_special",
				chain_time = 0.4
			}
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
            push_follow_up = {
				action_name = "action_right_light_pushfollow",
				chain_time = 0.25
			},
            start_attack = {
                action_name = "action_melee_start_left",
                chain_time = 0.5
            },
            special_action = {
                action_name = "action_attack_special",
                chain_time = 0.3
            }
        }
    },
    ["action_attack_special"] = {
        name = "action_attack_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
                chain_time = 0.2
            },
            special_action = {
                action_name = "action_attack_special",
                chain_time = 0.7
            }
        }
    }
}