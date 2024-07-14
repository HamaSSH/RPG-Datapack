#> asset:mob/005.oak_orc/hurt
# 被ダメージ時の動作

# 周囲のプレイヤーを毒にする
    execute as @a[distance=..2] run effect give @s poison 3 3

# 演出
    execute at @s run particle dust{color:[0.161,0.318,0.18],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0.1 100 force