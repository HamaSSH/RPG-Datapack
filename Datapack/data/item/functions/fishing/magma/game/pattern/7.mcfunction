#> item:fishing/magma/game/pattern/7
# パターン7 (50tick) 3.5ブロック

# 道筋
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 1 run tp @s ^ ^ ^-0.1
    execute if score @s Timer matches 2 run tp @s ^-0.01 ^ ^-0.1
    execute if score @s Timer matches 3 run tp @s ^-0.01 ^ ^-0.1
    execute if score @s Timer matches 4 run tp @s ^-0.02 ^ ^-0.1
    execute if score @s Timer matches 5 run tp @s ^-0.02 ^ ^-0.1
    execute if score @s Timer matches 6 run tp @s ^-0.03 ^ ^-0.1
    execute if score @s Timer matches 7 run tp @s ^-0.03 ^ ^-0.1
    execute if score @s Timer matches 8 run tp @s ^-0.04 ^ ^-0.1
    execute if score @s Timer matches 9 run tp @s ^-0.04 ^ ^-0.1
    execute if score @s Timer matches 10 run tp @s ^-0.05 ^ ^-0.1
    execute if score @s Timer matches 11 run tp @s ^-0.05 ^ ^-0.09
    execute if score @s Timer matches 12 run tp @s ^-0.06 ^ ^-0.09
    execute if score @s Timer matches 13 run tp @s ^-0.06 ^ ^-0.09
    execute if score @s Timer matches 14 run tp @s ^-0.07 ^ ^-0.09
    execute if score @s Timer matches 15 run tp @s ^-0.07 ^ ^-0.09
    execute if score @s Timer matches 16 run tp @s ^-0.08 ^ ^-0.09
    execute if score @s Timer matches 17 run tp @s ^-0.08 ^ ^-0.09
    execute if score @s Timer matches 18 run tp @s ^-0.07 ^ ^-0.09
    execute if score @s Timer matches 19 run tp @s ^-0.07 ^ ^-0.09
    execute if score @s Timer matches 20 run tp @s ^-0.06 ^ ^-0.09
    execute if score @s Timer matches 21 run tp @s ^-0.06 ^ ^-0.08
    execute if score @s Timer matches 22 run tp @s ^-0.05 ^ ^-0.08
    execute if score @s Timer matches 23 run tp @s ^-0.05 ^ ^-0.08
    execute if score @s Timer matches 24 run tp @s ^-0.04 ^ ^-0.08
    execute if score @s Timer matches 25 run tp @s ^-0.04 ^ ^-0.08
    execute if score @s Timer matches 26 run tp @s ^-0.03 ^ ^-0.08
    execute if score @s Timer matches 27 run tp @s ^-0.03 ^ ^-0.08
    execute if score @s Timer matches 28 run tp @s ^-0.02 ^ ^-0.08
    execute if score @s Timer matches 29 run tp @s ^-0.02 ^ ^-0.08
    execute if score @s Timer matches 30 run tp @s ^-0.01 ^ ^-0.08
    execute if score @s Timer matches 31 run tp @s ^-0.01 ^ ^-0.07
    execute if score @s Timer matches 32 run tp @s ^ ^ ^-0.07
    execute if score @s Timer matches 33 run tp @s ^ ^ ^-0.07
    execute if score @s Timer matches 34 run tp @s ^ ^ ^-0.07
    execute if score @s Timer matches 35 run tp @s ^0.01 ^ ^-0.07
    execute if score @s Timer matches 36 run tp @s ^0.03 ^ ^-0.07
    execute if score @s Timer matches 37 run tp @s ^0.05 ^ ^-0.06
    execute if score @s Timer matches 38 run tp @s ^0.07 ^ ^-0.06
    execute if score @s Timer matches 39 run tp @s ^0.09 ^ ^-0.05
    execute if score @s Timer matches 40 run tp @s ^0.11 ^ ^-0.05
    execute if score @s Timer matches 41 run tp @s ^0.13 ^ ^-0.04
    execute if score @s Timer matches 42 run tp @s ^0.15 ^ ^-0.04
    execute if score @s Timer matches 43 run tp @s ^0.15 ^ ^-0.03
    execute if score @s Timer matches 44 run tp @s ^0.14 ^ ^-0.03
    execute if score @s Timer matches 45 run tp @s ^0.11 ^ ^-0.02
    execute if score @s Timer matches 46 run tp @s ^0.09 ^ ^-0.02
    execute if score @s Timer matches 47 run tp @s ^0.06 ^ ^-0.01
    execute if score @s Timer matches 48 run tp @s ^0.05 ^ ^-0.01
    execute if score @s Timer matches 49 run tp @s ^0.03 ^ ^
    execute if score @s Timer matches 50 run tp @s ^0.01 ^ ^
    execute if score @s Timer matches 50.. run scoreboard players reset @s Timer