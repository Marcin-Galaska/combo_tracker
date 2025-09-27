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
				action_name = "action_activate_special_left"
			}
        }
    },
    ["action_melee_start_right"] = {
        name = "action_melee_start_right",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_2",
			},
			heavy_attack = {
				action_name = "action_heavy_2",
			},
			special_action = {
				action_name = "action_activate_special_right"
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
				action_name = "action_heavy_3",
			},
			special_action = {
				action_name = "action_activate_special_left_2"
			}
        }
    },
	["action_melee_start_left_pushfollowcombo"] = {
        name = "action_melee_start_left_pushfollowcombo",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_3"
			},
			heavy_attack = {
				action_name = "action_heavy_1",
			},
			special_action = {
				action_name = "action_activate_special_left_pushfollow"
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
				action_name = "action_activate_special_right",
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
				action_name = "action_activate_special_right",
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
				action_name = "action_activate_special_left_2",
			}
        }
    },
    ["action_heavy_2"] = {
        name = "action_heavy_2",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
			},
			special_action = {
				action_name = "action_activate_special_left_2",
			}
        }
    },
    ["action_light_3"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
			},
			special_action = {
				action_name = "action_activate_special_left",
			}
        }
    },
    ["action_heavy_3"] = {
        name = "action_heavy_3",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
			},
			special_action = {
				action_name = "action_activate_special_right",
			}
        }
    },
	["action_pushfollow"] = {
        name = "action_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_pushfollowcombo",
			},
			special_action = {
				action_name = "action_activate_special_left_pushfollow",
			}
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
			},
			push_follow_up = {
				action_name = "action_pushfollow",
			},
			special_action = {
				action_name = "action_activate_special_right",
			}
        }
    },
    ["action_activate_special_left"] = {
        name = "action_activate_special_left",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left",
			},
			special_action = {
				action_name = "action_activate_special_left",
			}
        }
    },
    ["action_activate_special_right"] = {
        name = "action_activate_special_right",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
			},
			special_action = {
				action_name = "action_activate_special_right",
			}
        }
    },
	["action_activate_special_left_2"] = {
        name = "action_activate_special_left_2",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2",
			},
			special_action = {
				action_name = "action_activate_special_left_2",
			}
        }
    },
	["action_activate_special_left_pushfollow"] = {
        name = "action_activate_special_left_pushfollow",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_pushfollowcombo",
			},
			special_action = {
				action_name = "action_activate_special_left_pushfollow",
			}
        }
    },
	["action_activate_special_block"] = {
        name = "action_activate_special_block",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right",
			},
			special_action = {
				action_name = "action_activate_special_block",
			}
        }
    }
}