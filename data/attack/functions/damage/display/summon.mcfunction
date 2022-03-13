# ダメージ表示用item召喚
    loot spawn ~ ~ ~ loot attack:dmg_display
# itemの名前にダメージを代入
    execute as @e[type=item,distance=..0] run function attack:damage/display/set