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
                action_name = "action_heavy_1",
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_wield"] = {
        name = "action_melee_start_wield",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_sprint"
            },
            heavy_attack = {
                action_name = "action_heavy_sprint",
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_sprint"] = {
        name = "action_melee_start_sprint",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_sprint"
            },
            heavy_attack = {
                action_name = "action_heavy_sprint",
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_slide"] = {
        name = "action_melee_start_slide",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_4"
            },
            heavy_attack = {
                action_name = "action_heavy_sprint",
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
                action_name = "action_light_2"
            },
            heavy_attack = {
                action_name = "action_heavy_2",
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
                action_name = "action_heavy_1",
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_left_2_heavy"] = {
        name = "action_melee_start_left_2_heavy",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_3"
            },
            heavy_attack = {
                action_name = "action_heavy_3",
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
                action_name = "action_heavy_2",
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_push_follow_combo"] = {
        name = "action_melee_start_push_follow_combo",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_stab"
            },
            heavy_attack = {
                action_name = "action_heavy_stab",
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_melee_start_special"] = {
        name = "action_melee_start_special",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_left_light_special"
            },
            heavy_attack = {
                action_name = "action_left_heavy_special",
            },
            special_action = {
                action_name = "action_activate_special"
            }
        }
    },
    ["action_light_1"] = {
        name = "action_light_1",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_heavy_1"] = {
        name = "action_heavy_1",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_light_sprint"] = {
        name = "action_light_sprint",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_heavy_sprint"] = {
        name = "action_heavy_sprint",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_light_2"] = {
        name = "action_light_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_heavy_2"] = {
        name = "action_heavy_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left_2_heavy",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_light_3"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_heavy_3"] = {
        name = "action_heavy_3",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right_2",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_light_4"] = {
        name = "action_light_4",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_left",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_light_stab"] = {
        name = "action_light_stab",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_heavy_stab"] = {
        name = "action_heavy_stab",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_left_light_special"] = {
        name = "action_left_light_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_left_heavy_special"] = {
        name = "action_left_heavy_special",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_right",
            },
            special_action = {
                action_name = "action_activate_special",
            }
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
			push_follow_up = {
				action_name = "action_find_target"
			},
			special_action = {
				action_name = "action_activate_special"
			},
			start_attack = {
				action_name = "action_melee_start_left"
			}
        }
    },
    ["action_find_target"] = {
        name = "action_find_target",
        kind = "target_finder",
        allowed_chain_actions = {
			fling_target = {
				action_name = "action_fling_target"
			}
        }
    },
    ["action_fling_target"] = {
        name = "action_fling_target",
        kind = "damage_target",
        allowed_chain_actions = {
			special_action = {
				action_name = "action_activate_special"
			},
			start_attack = {
				action_name = "action_melee_start_push_follow_combo"
			}
        }
    },
    ["action_activate_special"] = {
        name = "action_activate_special",
        kind = "activate_special",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_melee_start_special"
            }
        }
    }
}