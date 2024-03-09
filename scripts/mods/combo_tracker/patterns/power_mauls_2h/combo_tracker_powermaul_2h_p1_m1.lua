return {
    ["default"] = "action_melee_start_left",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_left_down_light"
			},
			heavy_attack = {
				action_name = "action_left_heavy",
				chain_time = 0.5
			},
			special_action = {
				action_name = "action_weapon_special"
			}
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_right_down_light",
				chain_time = 0.1
			},
			heavy_attack = {
				action_name = "action_right_heavy",
				chain_time = 0.35
			},
			special_action = {
				action_name = "action_weapon_special"
			}
        }
    },
    ["action_melee_start_left_2"] = {
        name = "action_melee_start_left_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_left_light",
				chain_time = 0.16
			},
			heavy_attack = {
				action_name = "action_left_heavy",
				chain_time = 0.45
			},
			special_action = {
				action_name = "action_weapon_special"
			}
        }
    },
    ["action_melee_start_right_2"] = {
        name = "action_melee_start_right_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_right_light",
				chain_time = 0.17
			},
			heavy_attack = {
				action_name = "action_right_heavy",
				chain_time = 0.6
			},
			special_action = {
				action_name = "action_weapon_special"
			}
        }
    },
    ["action_left_down_light"] = {
        name = "action_left_down_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.68
			},
			special_action = {
				action_name = "action_weapon_special",
				chain_time = 0.55
			}
        }
    },
    ["action_left_heavy"] = {
        name = "action_left_heavy",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.68
			},
			special_action = {
				action_name = "action_weapon_special",
				chain_time = 0.68
			}
        }
    },
    ["action_right_down_light"] = {
        name = "action_right_down_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.55
			},
			special_action = {
				action_name = "action_weapon_special",
				chain_time = 0.5
			}
        }
    },
    ["action_right_heavy"] = {
        name = "action_right_heavy",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.58
			},
			special_action = {
				action_name = "action_weapon_special",
				chain_time = 0.58
			}
        }
    },
    ["action_left_light"] = {
        name = "action_left_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.53
			},
			special_action = {
				action_name = "action_weapon_special",
				chain_time = 0.55
			}
        }
    },
    ["action_right_light"] = {
        name = "action_right_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.67
			},
			special_action = {
				action_name = "action_weapon_special",
				chain_time = 0.6
			}
        }
    },
	["action_right_light_pushfollow"] = {
        name = "action_right_light_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.3
			},
			special_action = {
				action_name = "action_weapon_special",
				chain_time = 0.35
			}
        }
    },
    ["action_push"] = {
        anem = "action_push",
        kind = "push",
        allowed_chain_actions = {
			push_follow_up = {
				action_name = "action_left_light_pushfollow",
				chain_time = 0.3
			},
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.3
			},
			special_action = {
				action_name = "action_weapon_special",
				chain_time = 0.3
			}
        }
    },
    ["action_weapon_special"] = {
        name = "action_weapon_special",
        kind = "activate_special",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.7
			}
        }
    }
}