#> asset:mob/001.skeleton/death
# 死亡時の動作

# 確率で002.skullの召喚
    execute if predicate lib:percentage/10 positioned ~ ~1.5 ~ run function asset:mob/002.skull/summon/_
    execute positioned ~ ~1.5 ~ as @e[type=silverfish,distance=..0.01] at @s run function asset:mob/002.skull/summon/random_motion