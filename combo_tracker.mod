return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`combo_tracker` encountered an error loading the Darktide Mod Framework.")

		new_mod("combo_tracker", {
			mod_script       = "combo_tracker/scripts/mods/combo_tracker/combo_tracker",
			mod_data         = "combo_tracker/scripts/mods/combo_tracker/combo_tracker_data",
			mod_localization = "combo_tracker/scripts/mods/combo_tracker/combo_tracker_localization",
		})
	end,
	packages = {},
}
