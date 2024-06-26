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
				chain_time = 0.76
			}
        }
    },
	["action_melee_start_slide"] = {
        name = "action_melee_start_slide",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_1_slide"
			},
			heavy_attack = {
				action_name = "action_heavy_1",
				chain_time = 0.85
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
				chain_time = 0.75
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
				chain_time = 0.8
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
				chain_time = 0.73
			}
        }
    },
    ["action_light_1"] = {
        name = "action_light_1",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.68
			},
			special_action = {
				action_name = "action_special",
				chain_time = 0.6
			}
        }
    },
	["action_light_1_slide"] = {
        name = "action_light_1_slide",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.68
			},
			special_action = {
				action_name = "action_special",
				chain_time = 0.6
			}
        }
    },
    ["action_heavy_1"] = {
        name = "action_heavy_1",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.58
			},
			special_action = {
				action_name = "action_special",
				chain_time = 0.9
			}
        }
    },
    ["action_light_2"] = {
        name = "action_light_2",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.66
			},
			special_action = {
				action_name = "action_special",
				chain_time = 0.63
			}
        }
    },
    ["action_heavy_2"] = {
        name = "action_right_heavy",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.63
			},
			special_action = {
				action_name = "action_special",
				chain_time = 0.9
			}
        }
    },
    ["action_light_3"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.76
			},
			special_action = {
				action_name = "action_special",
				chain_time = 0.75
			}
        }
    },
	["action_light_4"] = {
        name = "action_light_4",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.86
			},
			special_action = {
				action_name = "action_special",
				chain_time = 0.7
			}
        }
    },
    ["action_right_light_pushfollow"] = {
        name = "action_right_light_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			special_action = {
				action_name = "action_special",
				chain_time = 0.43
			},
			start_attack = {
				action_name = "action_melee_start_left",
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
				chain_time = 0.45
			},
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.5
			},
			special_action = {
				action_name = "action_special",
				chain_time = 0.45
			}
        }
    },
    ["action_special"] = {
        name = "action_special",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.75
			},
			special_action = {
				action_name = "action_special",
				chain_time = 1.3
			}
        }
    }
}