#> player:combat/main/dagger/skill/rec
# 当たり判定の再帰

# 当たり判定可視化
    # particle wax_on ~-0.4 ~-0.4 ~-0.4 0 0 0 0 10 force
    # particle wax_off ~0.4 ~0.4 ~0.4 0 0 0 0 10 force

# 当たり判定タグ付け
    execute positioned ~-0.4 ~-0.4 ~-0.4 as @e[type=#lib:every_mob,tag=Enemy,dx=0] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run tag @s add DaggerHit

# リーチの限界まで再帰 4.8ブロック
    # execute positioned ^ ^ ^0.8 if entity @s[distance=..4] if block ~ ~ ~ #lib:no_collision run function player:combat/main/dagger/skill/rec
    execute positioned ^ ^ ^0.8 if entity @s[distance=..4] run function player:combat/main/dagger/skill/rec