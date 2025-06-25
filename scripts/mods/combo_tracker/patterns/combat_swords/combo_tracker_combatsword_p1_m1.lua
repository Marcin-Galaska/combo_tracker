return {
    ["default"] = "action_melee_start_left",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_left_light",
            },
            heavy_attack = {
                action_name = "action_left_heavy",
            },
            special_action = {
                action_name = "action_parry_special"
            }
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_right_light",
            },
            heavy_attack = {
                action_name = "action_right_heavy",
            },
            special_action = {
                action_name = "action_parry_special"
            }
        }
    },
    ["action_melee_start_left_2"] = {
        name = "action_melee_start_left_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_left_light_2",
            },
            heavy_attack = {
                action_name = "action_left_heavy",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_melee_start_right_2"] = {
        name = "action_melee_start_right_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_right_light",
            },
            heavy_attack = {
                action_name = "action_right_heavy_2",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_melee_start_push_combo"] = {
        name = "action_melee_start_push_combo",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_left_light_2",
            },
            heavy_attack = {
                action_name = "action_left_heavy",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_left_light"] = {
        name = "action_left_light",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_left_heavy"] = {
        name = "action_left_heavy",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_right_light"] = {
        name = "action_right_light",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_right_heavy"] = {
        name = "action_right_heavy",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_left_light_2"] = {
        name = "action_left_light_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_right_heavy_2"] = {
        name = "action_right_heavy_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_right_light_pushfollow"] = {
        name = "action_right_light_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
			},
			special_action = {
				action_name = "action_parry_special",
			}
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
            push_follow_up = {
				action_name = "action_right_light_pushfollow",
			},
            start_attack = {
                action_name = "action_melee_start_push_combo",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_parry_special"] = {
        name = "action_parry_special",
        kind = "block",
        allowed_chain_actions = {
            parry = {
                action_name = "action_attack_special",
            },
            start_attack = {
                action_name = "action_melee_start_left",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    },
    ["action_attack_special"] = {
        name = "action_attack_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
            },
            special_action = {
                action_name = "action_parry_special",
            }
        }
    }
}