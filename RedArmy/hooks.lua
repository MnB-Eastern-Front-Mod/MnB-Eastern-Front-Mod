-- hooks.lua: small bits of code for things faction.toml can't say.
-- A hooks file may also have on_enable(faction) and on_soldier_created(dude, unit, side);
-- see the wiki, Part 3, "Code: [hooks]".
local H = {}

-- Primary AT rifles: a soldier's main weapon, using its own ammo and reloading like any gun.
-- The code patches in qm.toml look for weapon.primaryAT. To make another weapon a primary
-- AT rifle, give it class = "atRifle" in faction.toml and add its tag here.
local PRIMARY_AT = { ptrd = true, ptrs = true, boysAT = true }

-- Suppressed weapons: firing does not always break the stealth or camo buff (the Sten MkVI
-- rule). The code patch in qm.toml looks for weapon.suppressed. Add a weapon's tag here.
local SUPPRESSED = { mosinBramit = true, ppdBramit = true, ppdBramitDrum = true }

-- Runs after every weapon is built. tag is the weapon's tag, e.g. "mosin".
function H.on_weapon_created(weapon, tag)
  -- A weapon table is reused when a soldier changes guns, so the flag is set or cleared every time.
  weapon.primaryAT = PRIMARY_AT[weapon.tag] or nil
  weapon.suppressed = SUPPRESSED[weapon.tag] or nil
end

return H
