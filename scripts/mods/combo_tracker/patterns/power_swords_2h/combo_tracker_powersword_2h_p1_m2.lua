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
			}
        }
    },
    ["action_melee_start_sprint"] = {
        name = "action_melee_start_sprint",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_sprint_light",
			},
			heavy_attack = {
				action_name = "action_sprint_heavy_stab",
			}
        }
    },
    ["action_melee_start_slide"] = {
        name = "action_melee_start_slide",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_sprint_light"
			},
			heavy_attack = {
				action_name = "action_sprint_heavy_stab",
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
				action_name = "action_heavy_4",
			}
        }
    },
    ["action_melee_start_left_2"] = {
        name = "action_melee_start_left_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_3",
			},
			heavy_attack = {
				action_name = "action_heavy_3",
			}
        }
    },
    ["action_melee_start_right_2"] = {
        name = "action_melee_start_right_2",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_2",
			},
			heavy_attack = {
				action_name = "action_heavy_2",
			}
        }
    },
    ["action_melee_start_left_alt"] = {
        name = "action_melee_start_left_alt",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_1",
			},
			heavy_attack = {
				action_name = "action_heavy_3",
			}
        }
    },
    ["action_melee_start_pushfollow_combo"] = {
        name = "action_melee_start_pushfollow_combo",
        kind = "windup",
        allowed_chain_actions = {
			light_attack = {
				action_name = "action_light_3",
			},
			heavy_attack = {
				action_name = "action_heavy_1",
			}
        }
    },
    ["action_light_1"] = {
        name = "action_light_1",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right"
			}
        }
    },
    ["action_heavy_1"] = {
        name = "action_heavy_1",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2"
			}
        }
    },
    ["action_sprint_light"] = {
        name = "action_sprint_light",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2"
			}
        }
    },
    ["action_sprint_heavy_stab"] = {
        name = "action_sprint_heavy_stab",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2"
			}
        }
    },
    ["action_light_2"] = {
        name = "action_light_2",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2"
			}
        }
    },
    ["action_heavy_2"] = {
        name = "action_heavy_2",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2"
			}
        }
    },
    ["action_light_3"] = {
        name = "action_light_3",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2"
			}
        }
    },
    ["action_heavy_3"] = {
        name = "action_heavy_3",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right"
			}
        }
    },
    ["action_heavy_4"] = {
        name = "action_heavy_4",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_alt"
			}
        }
    },
    ["action_pushfollow"] = {
        name = "action_pushfollow",
        kind = "sweep",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_pushfollow_combo"
			}
        }
    },
    ["action_push"] = {
        name = "action_push",
        kind = "push",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2"
			},
			push_follow_up = {
				action_name = "action_pushfollow"
			}
        }
    },
    ["action_weapon_special_left"] = {
        name = "action_weapon_special_left",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left"
			}
        }
    },
    ["action_weapon_special_right"] = {
        name = "action_weapon_special_right",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right"
			}
        }
    },
    ["action_weapon_special_left_2"] = {
        name = "action_weapon_special_left_2",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_2"
			}
        }
    },
    ["action_weapon_special_left_alt"] = {
        name = "action_weapon_special_left_3",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_left_alt"
			}
        }
    },
    ["action_weapon_special_right_2"] = {
        name = "action_weapon_special_right_2",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_right_2"
			}
        }
    },
    ["action_weapon_special_pushfollow_combo"] = {
        name = "action_weapon_special_pushfollow_combo",
        kind = "toggle_special_with_block",
        allowed_chain_actions = {
			start_attack = {
				action_name = "action_melee_start_pushfollow_combo"
			}
        }
    },
}