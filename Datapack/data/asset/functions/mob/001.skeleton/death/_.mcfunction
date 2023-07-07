#> asset:mob/001.skeleton/death/_
# 死亡時の動作

# 確率で002.skullの召喚
    execute if predicate lib:percentage/10 anchored eyes positioned ~ ~ ~ run function asset:mob/002.skull/summon/_
    #execute anchored eyes positioned ~ ~ ~ as @e[type=silverfish,distance=..0.01] at @s run TODO: lib:ランダムモーション