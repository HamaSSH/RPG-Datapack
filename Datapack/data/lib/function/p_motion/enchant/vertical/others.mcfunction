#> lib:p_motion/enchant/vertical/others
# Motion適用するエンティティ以外を避難

execute at @s if entity @e[tag=!PMotion,distance=..0.0003,limit=1] as @e[tag=!PMotion,distance=..0.0003] at @s run function lib:p_motion/enchant/vertical/tp_up