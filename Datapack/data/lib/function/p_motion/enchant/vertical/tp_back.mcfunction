#> lib:p_motion/enchant/vertical/tp_back
# Motion適用するエンティティ以外を戻す

execute as @e[tag=TPBack] at @s run tp @s ~ ~-0.0003 ~
tag @e[tag=TPBack] remove TPBack