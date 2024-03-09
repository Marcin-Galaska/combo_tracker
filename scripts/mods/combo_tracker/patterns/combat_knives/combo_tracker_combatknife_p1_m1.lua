return {
    ["default"] = "action_melee_start_left",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_left_light"
			},
			heavy_attack = {
				action_name = "action_left_heavy",
				chain_time = 0.3
			}
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_right_light"
			},
			heavy_attack = {
				action_name = "action_right_heavy",
				chain_time = 0.3
			}
        }
    },
    ["action_melee_start_left_2"] = {
        name = "action_melee_start_left_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_left_light_2"
			},
			heavy_attack = {
				action_name = "action_left_heavy",
				chain_time = 0.3
			}
        }
    },
    ["action_melee_start_right_2"] = {
        name = "action_melee_start_right_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_right_light_2"
			},
			heavy_attack = {
				action_name = "action_right_heavy",
				chain_time = 0.3
			}
        }
    },
    ["action_melee_start_left_jab_combo"] = {
        name = "action_melee_start_left_jab_combo",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_left_heavy_jab_combo"
			},
			heavy_attack = {
				action_name = "action_left_heavy_jab_combo",
				chain_time = 0.3
			},
        }
    },
    ["action_left_light"] = {
        name = "action_left_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.4
			},
			special_action = {
				action_name = "action_special_jab",
				chain_time = 0.45
			}
        }
    },
    ["action_left_heavy"] = {
        name = "action_left_heavy",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.5
			},
			special_action = {
				action_name = "action_special_jab",
				chain_time = 0.55
			}
        }
    },
    ["action_right_light"] = {
        name = "action_right_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.4
			},
			special_action = {
				action_name = "action_special_jab",
				chain_time = 0.45
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
				action_name = "action_special_jab",
				chain_time = 0.55
			}
        }
    },
    ["action_left_light_2"] = {
        name = "action_left_light_2",
        kind = "sweep",
        allowed_chain_actions = {
			special_action = {
				action_name = "action_special_jab",
				chain_time = 0.5
			},
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.45
			}
        }
    },
    ["action_right_light_2"] = {
        name = "action_right_light_2",
        kind = "sweep",
        allowed_chain_actions = {
			special_action = {
				action_name = "action_special_jab",
				chain_time = 0.6
			},
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.55
			}
        }
    },
    ["action_right_light_pushfollow"] = {
        name = "action_right_light_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			special_action = {
				action_name = "action_special_jab",
				chain_time = 0.44
			},
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.44
			}
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.25
			},
			push_follow_up = {
				action_name = "action_right_light_pushfollow",
				chain_time = 0.25
			}
        }
    },
    ["action_special_jab"] = {
        name = "action_special_jab",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_jab_combo",
				chain_time = 0.32
			},
			special_action = {
				action_name = "action_special_jab",
				chain_time = 0.6
			}
        }
    },
    ["action_left_heavy_jab_combo"] = {
        name = "action_left_heavy_jab_combo",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.5
			},
			special_action = {
				action_name = "action_special_jab",
				chain_time = 0.4
			}
        }
    }
}