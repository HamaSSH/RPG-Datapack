#> asset:mob/bogged_skull/random_motion
# ランダムな方向に飛び出す

execute store result entity @s Motion[0] double 0.01 run random value -20..20
execute store result entity @s Motion[1] double 0.01 run random value 5..15
execute store result entity @s Motion[2] double 0.01 run random value -20..20

# 演出
    particle item{item:"bone"} ~ ~ ~ 0.3 0.0 0.3 0.15 15 force
    particle item{item:"red_mushroom"} ~ ~ ~ 0.3 0.0 0.3 0.15 15 force