#> lib:damage/display/summon
# ダメージ表示用itemの召喚

loot spawn ~ ~ ~ loot lib:dmg_display
execute as @e[type=item,distance=..0] run function lib:damage/display/init