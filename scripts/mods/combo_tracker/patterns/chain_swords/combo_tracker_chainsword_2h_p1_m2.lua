return {
    ["default"] = "action_melee_start_left",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
            light_attack = {
				action_name = "action_light_1",
				chain_time = 0.1
			},
			heavy_attack = {
				action_name = "action_heavy_1",
				chain_time = 0.4
			},
			special_action = {
				action_name = "action_start_special"
			}
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_2",
				chain_time = 0
			},
			heavy_attack = {
				action_name = "action_heavy_2",
				chain_time = 0.85
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.4
			}
        }
    },
    ["action_melee_start_left_2"] = {
        name = "action_melee_start_left_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_3",
				chain_time = 0
			},
			heavy_attack = {
				action_name = "action_heavy_1",
				chain_time = 0.76
			},
			special_action = {
				action_name = "action_start_special"
			}
        }
    },
    ["action_melee_start_right_2"] = {
        name = "action_melee_start_right_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_4",
				chain_time = 0
			},
			heavy_attack = {
				action_name = "action_heavy_2",
				chain_time = 0.6
			},
			special_action = {
				action_name = "action_start_special"
			}
        }
    },
    ["action_light_1"] = {
        name = "action_light_1",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.76
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.5
			}
        }
    },
    ["action_heavy_1"] = {
        name = "action_heavy_1",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.6
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.4
			}
        }
    },
    ["action_light_2"] = {
        name = "action_light_2",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.77
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.4
			}
        }
    },
    ["action_heavy_2"] = {
        name = "action_heavy_2",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.7
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.4
			}
        }
    },
    ["action_light_3"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.75
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.4
			}
        }
    },
    ["action_light_4"] = {
        name = "action_light_4",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.78
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.4
			}
        }
    },
	["action_right_light_pushfollow"] = {
        name = "action_right_light_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.8
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.8
			}
        }
    },
    ["action_push"] = {
        anem = "action_push",
        kind = "push",
        allowed_chain_actions = {
			push_follow_up = {
				action_name = "action_right_light_pushfollow",
				chain_time = 0.3
			},
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.52
			},
			special_action = {
				action_name = "action_start_special",
				chain_time = 0.9
			}
        }
    },
    ["action_start_special"] = {
        name = "action_start_special",
        kind = "toggle_special",
        allowed_chain_actions = {
            start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.6
			}
        }
    }
}