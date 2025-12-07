return {
    ["default"] = "action_melee_start_left",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_1"
            },
            heavy_attack = {
                action_name = "action_heavy_1"
            }
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_2"
            },
            heavy_attack = {
                action_name = "action_heavy_2"
            }
        }
    },
    ["action_melee_start_left_2"] = {
        name = "action_melee_start_left_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_3"
            },
            heavy_attack = {
                action_name = "action_heavy_1"
            }
        }
    },
    ["action_melee_start_right_2"] = {
        name = "action_melee_start_right_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_4"
            },
            heavy_attack = {
                action_name = "action_heavy_2"
            }
        }
    },
    ["action_melee_start_pushfollow_combo"] = {
        name = "action_melee_start_pushfollow_combo",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_1"
            },
            heavy_attack = {
                action_name = "action_heavy_pushfollow_combo"
            }
        }
    },
    ["action_melee_start_push_combo"] = {
        name = "action_melee_start_push_combo",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_2"
            },
            heavy_attack = {
                action_name = "action_heavy_push_combo"
            }
        }
    },
    ["action_light_1"] = {
        name = "action_light_1",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_heavy_1"] = {
        name = "action_heavy_1",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_light_2"] = {
        name = "action_light_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_heavy_2"] = {
        name = "action_heavy_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_light_3"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_light_4"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_pushfollow_combo"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_pushfollow"] = {
        name = "action_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_pushfollow_combo"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_heavy_pushfollow_combo"] = {
        name = "action_heavy_pushfollow_combo",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_heavy_push_combo"] = {
        name = "action_heavy_push_combo",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2"
            },
            special_action = {
                action_name = "action_special_coating_toggle"
            }
        }
    },
    ["action_push"] = {
        name = "action_push",
        push = "push",
        allowed_chain_actions = {
			push_follow_up = {
				action_name = "action_pushfollow"
			},
			special_action = {
				action_name = "action_special_coating_toggle"
			},
			start_attack = {
				action_name = "action_melee_start_push_combo"
			}
        }
    },
    ["action_special_coating_toggle"] = {
        name = "action_special_throw",
        kind = "weapon_throw",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left"
            }
        }
    },
}