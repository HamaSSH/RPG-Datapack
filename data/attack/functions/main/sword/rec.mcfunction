# 当たり判定タグ付け
    execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] run tag @s add Hit
# 当たり判定可視化
    # particle wax_on ~-0.2 ~-0.2 ~-0.2 0 0 0 0 10 force
    # particle wax_off ~0.2 ~0.2 ~0.2 0 0 0 0 10 force
# リーチの限界まで再帰
    execute positioned ^ ^ ^0.4 if entity @s[distance=..4] run function attack:main/sword/rec