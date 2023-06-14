#> item:fishing/magma/game/pattern/3
# パターン3 (30tick) 2.5ブロック

# 道筋
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 1 run tp @s ^-0.01 ^ ^-0.083
    execute if score @s Timer matches 2 run tp @s ^-0.015 ^ ^-0.083
    execute if score @s Timer matches 3 run tp @s ^-0.02 ^ ^-0.083
    execute if score @s Timer matches 4 run tp @s ^-0.025 ^ ^-0.083
    execute if score @s Timer matches 5 run tp @s ^-0.03 ^ ^-0.083
    execute if score @s Timer matches 6 run tp @s ^ ^ ^-0.083
    execute if score @s Timer matches 7 run tp @s ^ ^ ^-0.083
    execute if score @s Timer matches 8 run tp @s ^ ^ ^-0.083
    execute if score @s Timer matches 9 run tp @s ^ ^ ^-0.083
    execute if score @s Timer matches 10 run tp @s ^0.03 ^ ^-0.083
    execute if score @s Timer matches 11 run tp @s ^0.025 ^ ^-0.083
    execute if score @s Timer matches 12 run tp @s ^0.02 ^ ^-0.083
    execute if score @s Timer matches 13 run tp @s ^0.015 ^ ^-0.083
    execute if score @s Timer matches 14 run tp @s ^0.01 ^ ^-0.083
    execute if score @s Timer matches 15 run tp @s ^ ^ ^-0.083
    execute if score @s Timer matches 16 run tp @s ^0.01 ^ ^-0.083
    execute if score @s Timer matches 17 run tp @s ^0.02 ^ ^-0.083
    execute if score @s Timer matches 18 run tp @s ^0.03 ^ ^-0.083
    execute if score @s Timer matches 19 run tp @s ^0.04 ^ ^-0.083
    execute if score @s Timer matches 20 run tp @s ^0.05 ^ ^-0.083
    execute if score @s Timer matches 21 run tp @s ^0.06 ^ ^-0.083
    execute if score @s Timer matches 22 run tp @s ^ ^ ^-0.083
    execute if score @s Timer matches 23 run tp @s ^ ^ ^-0.083
    execute if score @s Timer matches 24 run tp @s ^ ^ ^-0.083
    execute if score @s Timer matches 25 run tp @s ^-0.06 ^ ^-0.083
    execute if score @s Timer matches 26 run tp @s ^-0.05 ^ ^-0.083
    execute if score @s Timer matches 27 run tp @s ^-0.04 ^ ^-0.083
    execute if score @s Timer matches 28 run tp @s ^-0.03 ^ ^-0.083
    execute if score @s Timer matches 29 run tp @s ^-0.02 ^ ^-0.083
    execute if score @s Timer matches 30 run tp @s ^-0.01 ^ ^-0.083
    execute if score @s Timer matches 30.. run scoreboard players reset @s Timer