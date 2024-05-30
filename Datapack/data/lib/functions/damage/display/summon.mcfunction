#> lib:damage/display/summon
# ダメージ表示用itemの召喚

tellraw @p {"nbt":"Damage","storage":"lib:"}
loot spawn ~ ~ ~ loot lib:dmg_display
execute as @e[type=item,distance=..0] run function lib:damage/display/init