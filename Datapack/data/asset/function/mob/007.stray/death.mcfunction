#> asset:mob/007.stray/death/_
# 死亡時の動作

# 確率で008.stray_skullの召喚
    execute if predicate lib:percentage/10 positioned ~ ~1.5 ~ run function asset:mob/008.stray_skull/summon/_
    execute positioned ~ ~1.5 ~ as @e[type=silverfish,distance=..0.01] at @s run function asset:mob/008.stray_skull/summon/random_motion