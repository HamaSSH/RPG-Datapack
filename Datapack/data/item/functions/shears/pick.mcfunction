##########
#>
#

# 収穫検知
    execute if score @s UsingShears matches 4.. if block ~ ~ ~ #item:flower run function item:shears/plants/break
    execute if score @s UsingShears matches 7.. if block ~ ~ ~ #item:mushroom run function item:shears/plants/break
    execute if score @s UsingShears matches 13.. as @e[type=minecraft:armor_stand,tag=SweetBerry,distance=..0.01] run function item:shears/sweet_berries/harvest