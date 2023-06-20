#> item:fishing/magma/game/sink
# ウキが沈む動作

scoreboard players add @s Timer 1

# 沈んでいる間(25tick)右クリックで釣り
    execute if score @s Timer matches 1 run tag @s add Fishable
    execute if score @s Timer matches 1 run data modify entity @s Motion[1] set value -0.2d
    execute if score @s Timer matches 2 run data modify entity @s Motion[1] set value -0.05d
    execute if score @s Timer matches 8 run data modify entity @s Motion[1] set value 0.00d
    execute if score @s Timer matches 18 run data modify entity @s Motion[1] set value 0.04d
    execute if score @s Timer matches 23 run data modify entity @s Motion[1] set value 0.02d

# 最初から
    execute if score @s Timer matches 25.. run tag @s remove Fishable
    execute if score @s Timer matches 25.. run scoreboard players reset @s Timer