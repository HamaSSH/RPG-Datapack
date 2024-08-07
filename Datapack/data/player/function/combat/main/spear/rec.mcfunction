#> player:combat/main/spear/rec
# 当たり判定の再帰

# 当たり判定可視化
    # particle wax_on ~-0.15 ~-0.15 ~-0.15 0 0 0 0 10 force
    # particle wax_off ~0.15 ~0.15 ~0.15 0 0 0 0 10 force

# 当たり判定タグ付け
    execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function mob:hitbox

# リーチの限界まで再帰 4.5ブロック
    # execute positioned ^ ^ ^0.3 if entity @s[distance=..4.2] if block ~ ~ ~ #lib:no_collision run function player:combat/main/spear/rec
    execute positioned ^ ^ ^0.3 if entity @s[distance=..4.2] run function player:combat/main/spear/rec