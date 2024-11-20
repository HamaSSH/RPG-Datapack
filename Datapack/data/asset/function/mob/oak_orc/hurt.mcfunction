#> asset:mob/oak_orc/hurt
# 被ダメージ時の動作

# 周囲のプレイヤーを毒にする
    execute as @a[distance=..2.5] run function asset:mob/oak_orc/poison_effect

# 演出
    execute at @s run particle dust{color:[0.161,0.318,0.18],scale:2} ~ ~1 ~ 0.8 0.4 0.8 0.2 100 force