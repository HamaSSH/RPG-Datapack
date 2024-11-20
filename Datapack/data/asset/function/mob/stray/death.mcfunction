#> asset:mob/stray/death
# 死亡時の動作

# 確率でstray_skullの召喚
    execute if predicate lib:percentage/10 positioned ~ ~1.5 ~ run function asset:mob/stray_skull/summon
    execute positioned ~ ~1.5 ~ as @e[type=silverfish,distance=..0.01] at @s run function asset:mob/stray_skull/random_motion