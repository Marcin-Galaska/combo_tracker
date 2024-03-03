-- Combo Tracker mod by mroużon. Ver. 1.0.0
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

local mod = get_mod("combo_tracker")

local prefix = "content/items/weapons/player/melee/"

local is_combatknife_p1_m2_heavy_3_follow_up = false
local combatknife_p1_m2_heavy_3_next_pattern = function()
    if is_combatknife_p1_m2_heavy_3_follow_up == true then
        is_combatknife_p1_m2_heavy_3_follow_up = false
        return {
            light = 4,
            heavy = 2
        }
    else
        return {
            light = 1,
            heavy = 1
        }
    end
end

return {
    [prefix .. "combatsword_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combatsword_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combatsword_p1_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combatsword_p2_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 4,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combatsword_p2_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combatsword_p2_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 3
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 3
            },
            [3] = {
                light = 4,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combatsword_p3_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 3,
                heavy = 1
            }
        end
    },
    [prefix .. "combatsword_p3_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 2,
                heavy = 2
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 3,
                heavy = 1
            }
        end
    },
    [prefix .. "combatsword_p3_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 3,
                heavy = 1
            }
        end
    },
    [prefix .. "powersword_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 2
        },
        on_special = function(action_name)
            if mod._current_attack % 2 == 0 or mod._current_attack == -1 then
                return {
                    light = 1,
                    heavy = 1
                }
            else
                return {
                    light = 2,
                    heavy = 2
                }
            end
        end
    },
    [prefix .. "powersword_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 4,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 2
        },
        on_special = function(action_name)
            if mod._current_attack % 2 == 0 or mod._current_attack == -1 then
                return {
                    light = 1,
                    heavy = 1
                }
            else
                return {
                    light = 2,
                    heavy = 2
                }
            end
        end
    },
    [prefix .. "forcesword_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "forcesword_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 4,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "forcesword_p1_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "chainsword_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "chainsword_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 3
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 4,
                heavy = 3
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "chainsword_2h_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 4,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "chainsword_2h_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combataxe_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 2,
                heavy = 2
            }
        end
    },
    [prefix .. "combataxe_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 2,
                heavy = 2
            }
        end
    },
    [prefix .. "combataxe_p1_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 3
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 3
            },
            [3] = {
                light = 2,
                heavy = 2
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 3,
                heavy = 3
            }
        end
    },
    [prefix .. "combataxe_p2_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combataxe_p2_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 2,
                heavy = 2
            }
        end
    },
    [prefix .. "combataxe_p2_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 3,
                heavy = 1
            }
        end
    },
    [prefix .. "combataxe_p3_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 3,
                heavy = 1
            }
        end
    },
    [prefix .. "combataxe_p3_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        -- TODO
    },
    [prefix .. "combataxe_p3_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        -- TODO
    },
    [prefix .. "chainaxe_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "chainaxe_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "combatknife_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 4,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 2
        },
        on_special = function(action_name)
            return {
                -- light attack is essentially the same as heavy
                heavy = 1
            }
        end
    },
    [prefix .. "combatknife_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 3
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 4,
                heavy = 3
            },
            [3] = combatknife_p1_m2_heavy_3_next_pattern()
        },
        push = {
            light = 2,
            heavy = 2
        }, -- Shit's bad, gotta come up with something, this ain't working
        on_special = function(action_name)
            is_combatknife_p1_m2_heavy_3_follow_up = true
            return {
                heavy = 3
            }
        end
    },
    [prefix .. "powermaul_2h_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 1
            },
            [4] = {
                light = 1,
                heavy = 2
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "thunderhammer_2h_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 2
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            if action_name == "action_activate_special_left" then
                return {
                    light = 1,
                    heavy = 1
                }
            elseif action_name == "action_activate_special_right" then
                return {
                    light = 2,
                    heavy = 2
                }
            elseif action_name == "action_activate_special_left_2" then
                return {
                    light = 3,
                    heavy = 1
                }
            end
        end
    },
    [prefix .. "thunderhammer_2h_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 3
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 3
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 2,
            heavy = 3
        },
        on_special = function(action_name)
            if action_name == "action_activate_special_left" then
                return {
                    light = 1,
                    heavy = 1
                }
            elseif action_name == "action_activate_special_right" then
                return {
                    light = 2,
                    heavy = 2
                }
            elseif action_name == "action_activate_special_left_2" then
                return {
                    light = 1,
                    heavy = 3
                }
            end
        end
    },
    [prefix .. "ogryn_club_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 2
            },
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 3,
                heavy = 1
            }
        end
    },
    [prefix .. "ogryn_club_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 4,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        -- TODO
    },
    [prefix .. "ogryn_club_p1_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        -- TODO
    },
    [prefix .. "ogryn_club_p2_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "ogryn_club_p2_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "ogryn_club_p2_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "ogryn_combatblade_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            },
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "ogryn_combatblade_p1_m2"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "ogryn_combatblade_p1_m3"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 1
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 1,
                heavy = 2
            }
        },
        heavy = {
            [1] = {
                light = 1,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "ogryn_powermaul_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 4,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    },
    [prefix .. "ogryn_powermaul_slabshield_p1_m1"] = {
        light = {
            [1] = {
                light = 2,
                heavy = 2
            },
            [2] = {
                light = 3,
                heavy = 1
            },
            [3] = {
                light = 4,
                heavy = 2
            },
            [4] = {
                light = 1,
                heavy = 1
            }
        },
        heavy = {
            [1] = {
                light = 3,
                heavy = 2
            },
            [2] = {
                light = 1,
                heavy = 1
            }
        },
        push = {
            light = 1,
            heavy = 1
        },
        on_special = function(action_name)
            return {
                light = 1,
                heavy = 1
            }
        end
    }
}