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
    loot spawn ~ ~ ~ loot minecraft:blocks/iron_ore
    scoreboard players remove @s hp 1
# HPの残量によって分岐
    execute unless score @s hp matches 0 run setblock ~ ~ ~ iron_ore
    execute if score @s hp matches 0 run function item:collect/iron_ore/finish