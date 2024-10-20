#> lib:p_motion/enchant/post_tp
# tp後の処理

execute positioned ~ ~0.0006 ~ as @e[distance=..0.0003,tag=PMotionTP] at @s run tp @s ~ ~-0.0006 ~
execute positioned ~ ~ ~ as @e[distance=..0.0003,tag=PMotionTP] run tag @s remove PMotionTP
execute positioned ~ ~ ~ as @p[distance=..0.0003,tag=PMotionExecutor] run tag @s remove PMotionExecutor