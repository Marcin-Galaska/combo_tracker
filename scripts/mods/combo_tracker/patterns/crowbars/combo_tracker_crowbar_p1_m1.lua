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
                action_name = "action_light_3"
            },
            heavy_attack = {
                action_name = "action_heavy_1"
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
                action_name = "action_light_4"
            },
            heavy_attack = {
                action_name = "action_heavy_2"
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_left_special"] = {
        name = "action_melee_start_left_special",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_1_special"
            },
            heavy_attack = {
                action_name = "action_heavy_1_special"
            }
        }
    },
    ["action_melee_start_right_special"] = {
        name = "action_melee_start_right_special",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_2_special"
            },
            heavy_attack = {
                action_name = "action_heavy_2_special"
            }
        }
    },
    ["action_melee_start_left_from_activate"] = {
        name = "action_melee_start_left_from_activate",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_1_from_activate"
            },
            heavy_attack = {
                action_name = "action_heavy_1_from_activate"
            }
        }
    },
    ["action_melee_start_right_from_activate"] = {
        name = "action_melee_start_right_from_activate",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_2_from_activate"
            },
            heavy_attack = {
                action_name = "action_heavy_2_from_activate"
            }
        }
    },
    ["action_melee_start_left_special_from_activate"] = {
        name = "action_melee_start_left_special_from_activate",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_1_special_from_activate"
            },
            heavy_attack = {
                action_name = "action_heavy_1_special_from_activate"
            }
        }
    },
    ["action_melee_start_right_special_from_activate"] = {
        name = "action_melee_start_right_special_from_activate",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_2_special_from_activate"
            },
            heavy_attack = {
                action_name = "action_heavy_2_special_from_activate"
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
                action_name = "action_special_activate_2"
            }
        }
    },
    ["action_light_1_from_activate"] = {
        name = "action_light_1_from_activate",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right"
            },
            special_action = {
                action_name = "action_special_activate_2"
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
                action_name = "action_special_activate_2"
            }
        }
    },
    ["action_heavy_1_from_special"] = {
        name = "action_heavy_1_from_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right"
            },
            special_action = {
                action_name = "action_special_activate_2"
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
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_light_2_from_special"] = {
        name = "action_light_2_from_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2"
            },
            special_action = {
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_heavy_2"] = {
        name = "action_heavy_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2"
            },
            special_action = {
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_heavy_2_from_special"] = {
        name = "action_heavy_2_from_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2"
            },
            special_action = {
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_light_1_special"] = {
        name = "action_light_1_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2"
            },
            special_action = {
                action_name = "action_special_activate_2"
            }
        }
    },
    ["action_light_1_special_from_activate"] = {
        name = "action_light_1_special_from_activate",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2"
            },
            special_action = {
                action_name = "action_special_activate_2"
            }
        }
    },
    ["action_heavy_1_special"] = {
        name = "action_heavy_1_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right"
            },
            special_action = {
                action_name = "action_special_activate_2"
            }
        }
    },
    ["action_heavy_1_special_from_activate"] = {
        name = "action_heavy_1_special_from_activate",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right"
            },
            special_action = {
                action_name = "action_special_activate_2"
            }
        }
    },
    ["action_light_2_special"] = {
        name = "action_light_2_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left"
            },
            special_action = {
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_light_2_special_from_activate"] = {
        name = "action_light_2_special_from_activate",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left"
            },
            special_action = {
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_heavy_2_special"] = {
        name = "action_heavy_2_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2"
            },
            special_action = {
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_heavy_2_special_from_activate"] = {
        name = "action_heavy_2_special_from_activate",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2"
            },
            special_action = {
                action_name = "action_special_activate_1"
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
                action_name = "action_special_activate_2"
            }
        }
    },
    ["action_light_4"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left"
            },
            special_action = {
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_pushfollow"] = {
        name = "action_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2"
            },
            special_action = {
                action_name = "action_special_activate_1"
            }
        }
    },
    ["action_pushfollow_special"] = {
        name = "action_pushfollow_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_special"
            },
            special_action = {
                action_name = "action_special_activate_1"
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
				action_name = "action_special_activate_1"
			},
			start_attack = {
				action_name = "action_melee_start_left"
			}
        }
    },
    ["action_special_activate_1"] = {
        name = "action_special_activate_1",
        kind = "toggle_special",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_from_activate"
            }
        },
        special_action = {
            action_name = "action_special_activate_2"
        },
    },
    ["action_special_activate_2"] = {
        name = "action_special_activate_2",
        kind = "toggle_special",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_from_activate"
            }
        },
        special_action = {
            action_name = "action_special_activate_1"
        },
    }
}