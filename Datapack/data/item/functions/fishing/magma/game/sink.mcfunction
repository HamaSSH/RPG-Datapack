#> item:fishing/magma/game/sink
# ウキが沈む動作

scoreboard players add @s Timer 1

# 沈んでいる間(25tick)右クリックで釣り
    execute if score @s Timer matches 5 run tag @s add Fishable
    execute if score @s Timer matches 5 run data modify entity @s Motion[1] set value -0.25d
    execute if score @s Timer matches 6 run data modify entity @s Motion[1] set value -0.05d
    execute if score @s Timer matches 10 run data modify entity @s Motion[1] set value 0.00d
    execute if score @s Timer matches 22 run data modify entity @s Motion[1] set value 0.04d
    execute if score @s Timer matches 27 run data modify entity @s Motion[1] set value 0.02d

# 最初から
    execute if score @s Timer matches 30.. run tag @s remove Fishable
    execute if score @s Timer matches 30.. run scoreboard players reset @s Timer