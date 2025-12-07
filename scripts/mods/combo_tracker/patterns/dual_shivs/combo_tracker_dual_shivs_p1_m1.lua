return {
    ["default"] = "action_start_1",
    ["action_start_1"] = {
        name = "action_start_1",
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
    ["action_start_2"] = {
        name = "action_start_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_2"
            },
            heavy_attack = {
                action_name = "action_heavy_1"
            }
        }
    },
    ["action_start_3"] = {
        name = "action_start_3",
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
    ["action_start_4"] = {
        name = "action_start_4",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_4"
            },
            heavy_attack = {
                action_name = "action_heavy_1"
            }
        }
    },
    ["action_start_alt_1"] = {
        name = "action_start_alt_1",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_alt_1"
            },
            heavy_attack = {
                action_name = "action_heavy_2"
            }
        }
    },
    ["action_start_alt_2"] = {
        name = "action_start_alt_2",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_alt_2"
            },
            heavy_attack = {
                action_name = "action_heavy_1"
            }
        }
    },
    ["action_start_alt_pushfollow"] = {
        name = "action_start_alt_pushfollow",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
                action_name = "action_light_alt_1"
            },
            heavy_attack = {
                action_name = "action_heavy_pushfollow"
            }
        }
    },
    ["action_light_1"] = {
        name = "action_light_1",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_2"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_heavy_1"] = {
        name = "action_heavy_1",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_alt_1"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_light_2"] = {
        name = "action_light_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_3"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_heavy_2"] = {
        name = "action_heavy_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_1"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_light_3"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_4"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_light_4"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_1"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_light_alt_1"] = {
        name = "action_light_alt_1",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_alt_2"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_light_alt_2"] = {
        name = "action_light_alt_2",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_3"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_heavy_pushfollow"] = {
        name = "action_heavy_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_alt_1"
            },
            special_action = {
                action_name = "action_special_throw"
            }
        }
    },
    ["action_pushfollow"] = {
        name = "action_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_alt_1"
            },
            special_action = {
                action_name = "action_special_throw"
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
				action_name = "action_special_throw"
			},
			start_attack = {
				action_name = "action_start_1"
			}
        }
    },
    ["action_special_throw"] = {
        name = "action_special_throw",
        kind = "weapon_throw",
        allowed_chain_actions = {
            start_attack = {
                action_name = "action_start_1"
            }
        }
    },
}