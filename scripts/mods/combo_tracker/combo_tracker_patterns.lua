-- Combo Tracker mod by mroużon. Ver. 2.0.9
-- Thanks to Zombine, Redbeardt and others for their input into the community. Their work helped me a lot in the process of creating this mod.

local mod = get_mod("combo_tracker")

local weapon = "content/items/weapons/player/melee/"
local path = "combo_tracker/scripts/mods/combo_tracker/patterns/"

return {
    -- Catachan Mk I "Devil's Claw" Sword
    [weapon .. "combatsword_p1_m1"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p1_m1"),
    -- Catachan Mk IV "Devil's Claw" Sword
    [weapon .. "combatsword_p1_m2"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p1_m2"),
    -- Catachan Mk VII "Devil's Claw" Sword
    [weapon .. "combatsword_p1_m3"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p1_m3"),
    -- Turtolsky Mk VI Heavy Sword
    [weapon .. "combatsword_p2_m1"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p2_m1"),
    -- Turtolsky Mk VII Heavy Sword
    [weapon .. "combatsword_p2_m2"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p2_m2"),
    -- Turtolsky Mk IX Heavy Sword
    [weapon .. "combatsword_p2_m3"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p2_m3"),
    -- Maccabian Mk II Dueling Sword
    [weapon .. "combatsword_p3_m1"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p3_m1"),
    -- Maccabian Mk IV Dueling Sword
    [weapon .. "combatsword_p3_m2"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p3_m2"),
    -- Maccabian Mk V Dueling Sword
    [weapon .. "combatsword_p3_m3"] = mod:io_dofile(path .. "combat_swords/combo_tracker_combatsword_p3_m3"),
    -- Munitorum Mk III Power Sword
    [weapon .. "powersword_p1_m1"] = mod:io_dofile(path .. "power_swords/combo_tracker_powersword_p1_m1"),
    -- Munitorum Mk VI Power Sword
    [weapon .. "powersword_p1_m2"] = mod:io_dofile(path .. "power_swords/combo_tracker_powersword_p1_m2"),
    -- Aridin Mk I Power Falchion
    [weapon .. "powersword_p2_m1"] = mod:io_dofile(path .. "power_swords/combo_tracker_powersword_p2_m1"),
    -- Lawbringer Mk IIb Power Falchion
    [weapon .. "powersword_p2_m2"] = mod:io_dofile(path .. "power_swords/combo_tracker_powersword_p2_m2"),
    -- Munitorum Mk X Relic Blade
    [weapon .. "powersword_2h_p1_m1"] = mod:io_dofile(path .. "power_swords_2h/combo_tracker_powersword_2h_p1_m1"),
    -- Munitorum Mk II Relic Blade
    [weapon .. "powersword_2h_p1_m2"] = mod:io_dofile(path .. "power_swords_2h/combo_tracker_powersword_2h_p1_m2"),
    -- Obscurus Mk II Blaze Force Sword
    [weapon .. "forcesword_p1_m1"] = mod:io_dofile(path .. "force_swords/combo_tracker_forcesword_p1_m1"),
    -- Deimos Mk IV Blaze Force Sword
    [weapon .. "forcesword_p1_m2"] = mod:io_dofile(path .. "force_swords/combo_tracker_forcesword_p1_m2"),
    -- Illisi Mk V Blaze Force Sword
    [weapon .. "forcesword_p1_m3"] = mod:io_dofile(path .. "force_swords/combo_tracker_forcesword_p1_m3"),
    -- Covenant Mk VI Blaze Force Greatsword
    [weapon .. "forcesword_2h_p1_m1"] = mod:io_dofile(path .. "force_swords_2h/combo_tracker_forcesword_2h_p1_m1"),
    -- Covenant Mk VIII Blaze Force Greatsword
    [weapon .. "forcesword_2h_p1_m2"] = mod:io_dofile(path .. "force_swords_2h/combo_tracker_forcesword_2h_p1_m2"),
    -- Cadia Mk IV Assault Chainsword
    [weapon .. "chainsword_p1_m1"] = mod:io_dofile(path .. "chain_swords/combo_tracker_chainsword_p1_m1"),
    -- Cadia Mk XIIIg Assault Chainsword
    [weapon .. "chainsword_p1_m2"] = mod:io_dofile(path .. "chain_swords/combo_tracker_chainsword_p1_m2"),
    -- Tigrus Mk II Heavy Eviscerator
    [weapon .. "chainsword_2h_p1_m1"] = mod:io_dofile(path .. "chain_swords/combo_tracker_chainsword_2h_p1_m1"),
    -- Tigrus Mk XV Heavy Eviscerator
    [weapon .. "chainsword_2h_p1_m2"] = mod:io_dofile(path .. "chain_swords/combo_tracker_chainsword_2h_p1_m2"),
    -- Rashad Mk II Combat Axe
    [weapon .. "combataxe_p1_m1"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p1_m1"),
    -- Antax Mk V Combat Axe
    [weapon .. "combataxe_p1_m2"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p1_m2"),
    -- Achlys Mk VIII Combat Axe
    [weapon .. "combataxe_p1_m3"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p1_m3"),
    -- Atrox Mk II Tactical Axe
    [weapon .. "combataxe_p2_m1"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p2_m1"),
    -- Atrox Mk IV Tactical Axe
    [weapon .. "combataxe_p2_m2"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p2_m2"),
    -- Atrox Mk VII Tactical Axe
    [weapon .. "combataxe_p2_m3"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p2_m3"),
    -- Standard-issue Munitorum Sapper Shovel
    [weapon .. "combataxe_p3_m1"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p3_m1"),
    -- Munitorum Mk III Sapper Shovel
    [weapon .. "combataxe_p3_m2"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p3_m2"),
    -- Munitorum Mk VII Sapper Shovel
    [weapon .. "combataxe_p3_m3"] = mod:io_dofile(path .. "combat_axes/combo_tracker_combataxe_p3_m3"),
    -- Orestes Mk IV Assault Chainaxe
    [weapon .. "chainaxe_p1_m1"] = mod:io_dofile(path .. "chain_axes/combo_tracker_chainaxe_p1_m1"),
    -- Orestes Mk XII Assault Chainaxe
    [weapon .. "chainaxe_p1_m2"] = mod:io_dofile(path .. "chain_axes/combo_tracker_chainaxe_p1_m2"),
    -- Catachan Mk III Combat Blade
    [weapon .. "combatknife_p1_m1"] = mod:io_dofile(path .. "combat_knives/combo_tracker_combatknife_p1_m1"),
    -- Catachan Mk VI Combat Blade
    [weapon .. "combatknife_p1_m2"] = mod:io_dofile(path .. "combat_knives/combo_tracker_combatknife_p1_m2"),
    -- Agni Mk Ia Shock Maul
    [weapon .. "powermaul_p1_m1"] = mod:io_dofile(path .. "power_mauls/combo_tracker_powermaul_p1_m1"),
    -- Indignatus Mk III Shock Maul
    [weapon .. "powermaul_p1_m2"] = mod:io_dofile(path .. "power_mauls/combo_tracker_powermaul_p1_m2"),
    -- Indignatus Mk IVe Crusher
    [weapon .. "powermaul_2h_p1_m1"] = mod:io_dofile(path .. "power_mauls_2h/combo_tracker_powermaul_2h_p1_m1"),
    -- Crucis Mk II Thunder Hammer
    [weapon .. "thunderhammer_2h_p1_m1"] = mod:io_dofile(path .. "thunder_hammers/combo_tracker_thunderhammer_2h_p1_m1"),
    -- Ironhelm Mk IV Thunder Hammer
    [weapon .. "thunderhammer_2h_p1_m2"] = mod:io_dofile(path .. "thunder_hammers/combo_tracker_thunderhammer_2h_p1_m2"),
    -- Branx Pickaxe
    [weapon .. "ogryn_pickaxe_2h_p1_m1"] = mod:io_dofile(path .. "ogryn_axes_2h/combo_tracker_ogryn_pickaxe_2h_p1_m1"),
    -- Borovian Pickaxe
    [weapon .. "ogryn_pickaxe_2h_p1_m2"] = mod:io_dofile(path .. "ogryn_axes_2h/combo_tracker_ogryn_pickaxe_2h_p1_m2"),
    -- Karsolas Pickaxe
    [weapon .. "ogryn_pickaxe_2h_p1_m3"] = mod:io_dofile(path .. "ogryn_axes_2h/combo_tracker_ogryn_pickaxe_2h_p1_m3"),
    -- Brute-Brainer Mk III Latrine Shovel
    [weapon .. "ogryn_club_p1_m1"] = mod:io_dofile(path .. "ogryn_clubs/combo_tracker_ogryn_club_p1_m1"),
    -- Brute-Brainer Mk XIX Latrine Shovel
    [weapon .. "ogryn_club_p1_m2"] = mod:io_dofile(path .. "ogryn_clubs/combo_tracker_ogryn_club_p1_m2"),
    -- Brute-Brainer Mk V Latrine Shovel
    [weapon .. "ogryn_club_p1_m3"] = mod:io_dofile(path .. "ogryn_clubs/combo_tracker_ogryn_club_p1_m3"),
    -- "Brunt Special" Mk I Bully Club
    [weapon .. "ogryn_club_p2_m1"] = mod:io_dofile(path .. "ogryn_clubs/combo_tracker_ogryn_club_p2_m1"),
    -- "Brunt's Basher" Mk IIIb Bully Club
    [weapon .. "ogryn_club_p2_m2"] = mod:io_dofile(path .. "ogryn_clubs/combo_tracker_ogryn_club_p2_m2"),
    -- "Brunt's Pride" Mk II Bully Club
    [weapon .. "ogryn_club_p2_m3"] = mod:io_dofile(path .. "ogryn_clubs/combo_tracker_ogryn_club_p2_m3"),
    -- Krourk Mk VI Cleaver
    [weapon .. "ogryn_combatblade_p1_m1"] = mod:io_dofile(path .. "combat_blades/combo_tracker_ogryn_combatblade_p1_m1"),
    -- Bull Butcher Mk III Cleaver
    [weapon .. "ogryn_combatblade_p1_m2"] = mod:io_dofile(path .. "combat_blades/combo_tracker_ogryn_combatblade_p1_m2"),
    -- Krourk Mk IV Cleaver
    [weapon .. "ogryn_combatblade_p1_m3"] = mod:io_dofile(path .. "combat_blades/combo_tracker_ogryn_combatblade_p1_m3"),
    -- Achlys Mk I Power Maul
    [weapon .. "ogryn_powermaul_p1_m1"] = mod:io_dofile(path .. "ogryn_power_mauls/combo_tracker_ogryn_powermaul_p1_m1"),
    -- Unadded Ogryn Power Maul (m2)
    [weapon .. "ogryn_powermaul_p1_m2"] = mod:io_dofile(path .. "ogryn_power_mauls/combo_tracker_ogryn_powermaul_p1_m2"),
    -- Unadded Ogryn Power Maul (m3)
    [weapon .. "ogryn_powermaul_p1_m3"] = mod:io_dofile(path .. "ogryn_power_mauls/combo_tracker_ogryn_powermaul_p1_m3"),
    -- Orox Mk II Battle Maul & Mk III Slab Shield
    [weapon .. "ogryn_powermaul_slabshield_p1_m1"] = mod:io_dofile(path .. "ogryn_powermaul_slabshield/combo_tracker_ogryn_powermaul_slabshield_p1_m1"),
    -- Branx Mk III Arbites Shock Maul
    [weapon .. "powermaul_p2_m1"] = mod:io_dofile(path .. "power_mauls/combo_tracker_powermaul_p2_m1"),
    -- Unnamed Arbites powermaul (m2)
    [weapon .. "powermaul_p2_m2"] = mod:io_dofile(path .. "power_mauls/combo_tracker_powermaul_p2_m2"),
    -- Branx Mk VI Shock Maul and Suppression Shield
    [weapon .. "powermaul_shield_p1_m1"] = mod:io_dofile(path .. "power_maul_shields/combo_tracker_powermaul_shield_p1_m1"),
    -- Branx Mk XI Shock Maul and Suppression Shield
    [weapon .. "powermaul_shield_p1_m2"] = mod:io_dofile(path .. "power_maul_shields/combo_tracker_powermaul_shield_p1_m2"),
}