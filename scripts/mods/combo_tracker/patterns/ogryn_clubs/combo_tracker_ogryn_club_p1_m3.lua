return {
    ["is_foldable_shovel"] = true,
    ["default"] = "action_melee_start_left",
	["folded_default"] = "action_melee_start_left_special",
    ["action_melee_start_left"] = {
        name = "action_melee_start_left",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_left_light"
			},
			heavy_attack = {
				action_name = "action_left_heavy",
				chain_time = 0.55
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
				chain_time = 0.75
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
				chain_time = 0.75
			}
        }
    },
    ["action_melee_start_right_2"] = {
        name = "action_melee_start_right_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_melee_light_4"
			},
			heavy_attack = {
				action_name = "action_right_heavy",
				chain_time = 0.75
			}
        }
    },
    ["action_melee_start_left_special"] = {
        name = "action_melee_start_left_special",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_left_light_special"
			},
			heavy_attack = {
				action_name = "action_left_heavy_special",
				chain_time = 0.5
			}
        }
    },
    ["action_left_light"] = {
        name = "action_left_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.65
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 0.65
			}
        }
    },
    ["action_left_heavy"] = {
        name = "action_left_heavy",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
				chain_time = 0.54
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 0.5
			}
        }
    },
    ["action_right_light"] = {
        name = "action_right_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
				chain_time = 0.58
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 0.6
			}
        }
    },
    ["action_right_heavy"] = {
        name = "action_right_heavy",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.49
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 0.48
			}
        }
    },
    ["action_left_light_2"] = {
        name = "action_left_light_2",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2",
				chain_time = 0.65
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 0.55
			}
        }
    },
    ["action_melee_light_4"] = {
        name = "action_melee_light_4",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.79
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 0.6
			}
        }
    },
    ["action_left_light_special"] = {
        name = "action_left_light_special",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				{
					action_name = "action_melee_start_left_special",
					chain_time = 1.3
				},
				{
					action_name = "action_melee_start_right",
					chain_time = 1.3
				}
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 1.1
			}
        }
    },
    ["action_left_heavy_special"] = {
        name = "action_left_heavy_special",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				{
					action_name = "action_melee_start_left_special",
					chain_time = 1.95
				},
				{
					action_name = "action_melee_start_right",
					chain_time = 1.5
				}
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 1.2
			}
        }
    },
    ["action_right_light_pushfollow"] = {
        name = "action_right_light_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			special_action = {
				action_name = "action_special_activate",
				chain_time = 0.5
			},
			start_attack = {
				action_name = "action_melee_start_left",
				chain_time = 0.7
			}
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
			push_follow_up = {
				{
					action_name = "action_left_light_special",
					chain_time = 0.45
				},
				{
					action_name = "action_right_light_pushfollow",
					chain_time = 0.45
				}
			},
			start_attack = {
				{
					action_name = "action_melee_start_left_special",
					chain_time = 0.5
				},
				{
					action_name = "action_melee_start_left",
					chain_time = 0.5
				}
			}
        }
    },
	["action_block"] = {
		name = "action_block",
        kind = "block",
		allowed_chain_actions = {
			start_attack = {
				{
					action_name = "action_melee_start_left_special",
					chain_time = 0.5
				},
				{
					action_name = "action_melee_start_left",
					chain_time = 0.5
				}
			},
			special_action = {
				action_name = "action_special_activate",
				chain_time = 0.3
			}
		}
	},
    ["action_special_activate"] = {
        name = "action_special_activate",
        kind = "toggle_special",
        allowed_chain_actions = {
            start_attack = {
				{
					action_name = "action_melee_start_left_special",
					chain_time = 0.62
				},
				{
					action_name = "action_melee_start_left",
					chain_time = 0.62
				}
			}
        }
    }
}