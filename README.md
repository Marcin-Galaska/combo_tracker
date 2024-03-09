# combo_tracker
 A Warhammer 40K: Darktide mod that adds a widget keeping track of your melee combo.

### Darktide Mod Framework
This mod utilizes DMF, a monkey patching framework for Darktide's Autodesk Stringray engine, and is structured accordingly - a *.mod* file, 3 standard *.lua* files, a *.lua* file containing a table of weapon action trees, a 3-file *HudElementCombo* class definition and a set of *.lua* files defining relations between each melee weapon's relevant actions:
- combo_tracker.lua - main logic of the modification.

- combo_tracker_data.lua - in-game configurable variables used in the logic.

- combo_tracker_localization.lua - localization strings used in UI.

- combo_tracker_patterns.lua - table of action trees for every melee weapon.

- hud_element_combo_settings.lua - HUD constants

- hud_element_combo_definitions.lua - scenegraph and widget definitions

- hud_element_combo.lua - widget functions

- combo_tracker_{weapon_name}.lua files - tables of relevant actions and their dependencies for each weapon

**Make sure you are familiar with the [DMF mod installation procedure](https://dmf-docs.darkti.de/#/installing-mods) before attempting to install or modify this repository.**

### Concept
This highly customizable mod adds a melee weapon combo pattern widget to your HUD. It is updated in real time and accounts for special actions, such as blocking, pushing, push follow-ups etc.

### Usage
Upon installing this mod, you are ready to go. This mod keeps track of your melee combo and displays your whole weapon attack pattern, the sweep you're committing and potential next sweeps, accordingly to the preferences you set inside DMF's mod settings:

![settings](https://github.com/Marcin-Galaska/combo_tracker/assets/106023363/3855c165-c276-44fd-924b-aad19d383afa)

By default, the widget is located above your crosshair:

![combat](https://github.com/Marcin-Galaska/combo_tracker/assets/106023363/a85e9602-b6d0-4469-85e7-5fed84bc0447)

![parry](https://github.com/Marcin-Galaska/combo_tracker/assets/106023363/a591ef36-b5c4-4496-bdb8-a5f5c8b97204)

You can configure the widget's color, position, fade in/out speed and visibility outside the Psykhanium to your liking.

## Thanks to Zombine, Redbeardt and others for their input into the Darktide modding community. Their work helped me a lot in the process of creating this mod. The Emperor protects.

### License
BSD 2-Clause License

Copyright (c) 2024, Marcin Gałąska <br>
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.
