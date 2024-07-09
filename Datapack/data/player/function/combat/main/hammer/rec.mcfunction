#> player:combat/main/hammer/rec
# 当たり判定の再帰

# 当たり判定可視化
    # particle wax_on ~-0.6 ~-0.5 ~-0.6 0 0 0 0 10 force
    # particle wax_off ~0.6 ~0.5 ~0.6 0 0 0 0 10 force

# 当たり判定タグ付け
    execute positioned ~-0.6 ~-0.6 ~-0.6 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0.2,dz=0.2] run function mob:hitbox

# リーチの限界まで再帰 4.0ブロック
    # execute positioned ^ ^ ^0.5 if entity @s[distance=..3.5] if block ~ ~ ~ #lib:no_collision run function player:combat/main/hammer/rec
    execute positioned ^ ^ ^0.5 if entity @s[distance=..3.5] run function player:combat/main/hammer/rec