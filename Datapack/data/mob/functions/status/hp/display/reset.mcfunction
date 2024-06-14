#> mob:status/hp/display/reset
# 戦闘中でなければ名前表示を元に戻す

data modify entity @s CustomName set from entity @s ArmorItems[3].components.minecraft:custom_data.MobName
scoreboard players reset @s InCombat
tag @s remove InCombat