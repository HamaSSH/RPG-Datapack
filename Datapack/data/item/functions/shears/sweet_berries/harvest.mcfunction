##########
#>
#

# HPバーの表示
    data modify entity @s CustomNameVisible set value 1b
    data modify entity @s PortalCooldown set value 200
    execute if score @s hp matches 5 run data modify entity @s CustomName set value '[{"text":"████","color":"green"},{"text":"█","color":"dark_gray"}]'
    execute if score @s hp matches 4 run data modify entity @s CustomName set value '[{"text":"███","color":"green"},{"text":"██","color":"dark_gray"}]'
    execute if score @s hp matches 3 run data modify entity @s CustomName set value '[{"text":"██","color":"green"},{"text":"███","color":"dark_gray"}]'
    execute if score @s hp matches 2 run data modify entity @s CustomName set value '[{"text":"█","color":"green"},{"text":"████","color":"dark_gray"}]'
    execute if score @s hp matches 1 run data modify entity @s CustomName set value '[{"text":"█████","color":"dark_gray"}]'
# ダメージ処理
    execute if score @s hp matches 1.. run loot spawn ~ ~ ~ loot minecraft:blocks/sweet_berry_bush
    execute if score @s hp matches 1.. run playsound block.sweet_berry_bush.pick_berries master @a
    execute as @p[tag=Harvestable] run scoreboard players reset @s UsingShears
    scoreboard players remove @s hp 1
# HPの残量によって分岐
    execute if score @s hp matches 3 run setblock ~ ~ ~ dead_fire_coral[waterlogged=false]
    execute if score @s hp matches 0 run setblock ~ ~ ~ dead_bubble_coral[waterlogged=false]
    execute if score @s hp matches 0 run function item:shears/sweet_berries/finish