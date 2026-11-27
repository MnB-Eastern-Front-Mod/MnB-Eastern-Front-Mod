# Red Army (QuarterMaster faction mod)

The Red Army takes over the Allied side of Mud and Blood. This folder is the mod itself.
It is a template: the structure is complete, and much of the content is still placeholder.

## Files

| File or folder | What it is |
|---|---|
| `mod.json` | Who the mod is: id, name, version, and the QuarterMaster features it needs. |
| `faction.toml` | The army: names, text, ranks, weapons, classes, grenades, skills, vehicles, image sizes. Most work happens here. |
| `names/` | Soldier name lists, one name per line. |
| `units/<unit>/` | Soldier art, one image per animation frame (`idle.png`, `aim.png` ...). |
| `weapons/` | Weapon art: `top_<tag>.png` (in hand) and `side_<tag>.png` (in menus). Sounds go here too. |
| `voices/`, `voices_partisans/` | Voice lines, named like the game's (`contact1.wav` ...). |
| `vehicles/<name>/` | Vehicle art: `body.png`, `turret.png`, `husk.png`, `debris1.png` ... |
| `icons/`, `misc/` | Class badges and any other image or sound. |
| `faction.schema.json` | Lets editors check `faction.toml` as you type. Don't edit. |

## Real and placeholder

Every section of `faction.toml` starts with a comment marked REAL (from the planning doc or
the Weapons Stats sheet) or PLACEHOLDER (an example to replace). Lines starting with `# ` are
switched off; remove the `# ` to switch them on. Anything left out stays vanilla.

Real so far: faction header, ranks, 31 weapons with stats and text (28 with their own art),
grenades, 12 class names with start weapons and unlocks, battle condition renames, 7 vehicle
names, partisan weapon pool.

Still placeholder: name lists, all unit art, all sounds and voices, vehicle art, class
descriptions, most bonuses and icons.

## Checking your work

The mod needs QuarterMaster 2.2.2 or newer, for the loader's grenade, skill, rank, intro and
weapon behaviour features. Run this after every change (`qm.exe` comes with QuarterMaster):

```
qm faction check RedArmy
```

Errors must be fixed. Warnings are a to-do list: each one names art or sound that is still vanilla.

## Adding a weapon sprite

1. Save the image as `weapons/top_<tag>.png` or `weapons/side_<tag>.png` (100x100 px).
2. In `faction.toml`, find the weapon and remove the `# ` in front of its `top_sprite` or `side_sprite` line.
3. Run the check.

Full guide: QuarterMaster modding wiki, Part 3 ("Faction mods").
