#> player:combat/main/spear/skill/rec
# 当たり判定の再帰

# 当たり判定可視化
    # particle wax_on ~-0.5 ~-0.5 ~-0.5 0 0 0 0 10 force
    # particle wax_off ~0.5 ~0.5 ~0.5 0 0 0 0 10 force

# 当たり判定タグ付け
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,dx=0] run function mob:hitbox

# リーチの限界まで再帰
    # execute positioned ^ ^ ^0.2 if entity @s[distance=..7] if block ~ ~ ~ #lib:no_collision run function player:combat/main/spear/skill/rec
    execute positioned ^ ^ ^0.2 if entity @s[distance=..7] run function player:combat/main/spear/skill/rec