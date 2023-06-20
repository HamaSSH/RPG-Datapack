#> item:fishing/magma/game/pattern/0
# パターン0 (20tick) 2.0ブロック

# 道筋
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 1 run tp @s ^0.15 ^ ^-0.1
    execute if score @s Timer matches 2 run tp @s ^0.10 ^ ^-0.1
    execute if score @s Timer matches 3 run tp @s ^0.05 ^ ^-0.1
    execute if score @s Timer matches 4 run tp @s ^ ^ ^-0.1
    execute if score @s Timer matches 5 run tp @s ^-0.05 ^ ^-0.1
    execute if score @s Timer matches 6 run tp @s ^-0.10 ^ ^-0.1
    execute if score @s Timer matches 7 run tp @s ^-0.15 ^ ^-0.1
    execute if score @s Timer matches 8 run tp @s ^ ^ ^-0.1
    execute if score @s Timer matches 9 run tp @s ^0.05 ^ ^-0.1
    execute if score @s Timer matches 10 run tp @s ^0.05 ^ ^-0.1
    execute if score @s Timer matches 11 run tp @s ^0.10 ^ ^-0.1
    execute if score @s Timer matches 12 run tp @s ^0.15 ^ ^-0.1
    execute if score @s Timer matches 13 run tp @s ^0.20 ^ ^-0.1
    execute if score @s Timer matches 14 run tp @s ^ ^ ^-0.1
    execute if score @s Timer matches 15 run tp @s ^-0.05 ^ ^-0.1
    execute if score @s Timer matches 16 run tp @s ^-0.05 ^ ^-0.1
    execute if score @s Timer matches 17 run tp @s ^-0.10 ^ ^-0.1
    execute if score @s Timer matches 18 run tp @s ^-0.15 ^ ^-0.1
    execute if score @s Timer matches 19 run tp @s ^-0.20 ^ ^-0.1
    execute if score @s Timer matches 20 run tp @s ^ ^ ^-0.1
    execute if score @s Timer matches 20.. run scoreboard players reset @s Timer