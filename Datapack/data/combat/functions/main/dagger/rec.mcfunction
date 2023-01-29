# 当たり判定タグ付け
    execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#mob:mobs,tag=Enemy,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run tag @s add Hit
# 当たり判定可視化
    # particle wax_on ~-0.15 ~-0.15 ~-0.15 0 0 0 0 10 force
    # particle wax_off ~0.15 ~0.15 ~0.15 0 0 0 0 10 force
# リーチの限界まで再帰
    execute positioned ^ ^ ^0.3 if entity @s[distance=..3.5] run function combat:main/dagger/rec