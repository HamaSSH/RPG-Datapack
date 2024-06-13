#> player:combat/main/sword/rec
# 当たり判定の再帰

# 当たり判定可視化
    # particle wax_on ~-0.25 ~-0.25 ~-0.25 0 0 0 0 10 force
    # particle wax_off ~0.25 ~0.25 ~0.25 0 0 0 0 10 force

# 当たり判定タグ付け
    execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run tag @s add SwordHit

# リーチの限界まで再帰 4.0ブロック
    execute positioned ^ ^ ^0.5 if entity @s[distance=..3.5] if block ~ ~ ~ #lib:no_collision run function player:combat/main/sword/rec
    execute positioned ^ ^ ^0.5 if entity @s[distance=..3.5] run function player:combat/main/sword/rec