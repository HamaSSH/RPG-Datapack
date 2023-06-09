##########
#>
#

# ArmorStandとしてブロックが壊されたか検知
    execute as @e[type=armor_stand,tag=CoalOre,distance=..0.01] unless block ~ ~ ~ coal_ore run function item:collect/coal_ore/break
    execute as @e[type=armor_stand,tag=GoldOre,distance=..0.01] unless block ~ ~ ~ gold_ore run function item:collect/gold_ore/break