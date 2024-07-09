#> asset:mob/009.wither_skeleton/death/_
# 死亡時の動作

# 確率で010.wither_skullの召喚
    execute if predicate lib:percentage/10 positioned ~ ~1.5 ~ run function asset:mob/010.wither_skull/summon/_
    execute positioned ~ ~1.5 ~ as @e[type=silverfish,distance=..0.01] at @s run function asset:mob/010.wither_skull/summon/random_motion