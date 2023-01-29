# ダメージ表示用item召喚
    loot spawn ~ ~ ~ loot combat:dmg_display
# itemの名前にダメージを代入
    execute as @e[type=item,distance=..0] run function combat:damage/display/set