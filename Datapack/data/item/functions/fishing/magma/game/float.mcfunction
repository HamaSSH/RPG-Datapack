#> item:fishing/magma/game/float
# ランダムな浮き沈み

# RNG
    scoreboard players set $RNGMax Temporary 4
    function core:rng

# 沈む強さ4段階
    execute if score $RNG Temporary matches 0 run data modify entity @s Motion[1] set value -0.01d
    execute if score $RNG Temporary matches 1 run data modify entity @s Motion[1] set value -0.008d
    execute if score $RNG Temporary matches 2 run data modify entity @s Motion[1] set value -0.006d
    execute if score $RNG Temporary matches 3 run data modify entity @s Motion[1] set value -0.004d

# リセット
    scoreboard players reset $RNG Temporary