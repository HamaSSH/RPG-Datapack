#> lib:p_motion/enchant/pre_tp
# tp前の処理

execute as @e[distance=..0.0003,tag=!PMotionExecutor,tag=!PMotionAS] run tag @s add PMotionTP
execute as @e[distance=..0.0003,tag=PMotionTP] at @s run tp @s ~ ~0.0006 ~