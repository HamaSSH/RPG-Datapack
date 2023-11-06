#> player:combat/main/dagger/rec
# 当たり判定の再帰

# 当たり判定可視化
    # particle wax_on ~-0.2 ~-0.2 ~-0.2 0 0 0 0 10 force
    # particle wax_off ~0.2 ~0.2 ~0.2 0 0 0 0 10 force

# 当たり判定タグ付け
    execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[type=#lib:every_mob,tag=Enemy,dx=0] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] run tag @s add Hit

# リーチの限界まで再帰 3.6ブロック
    execute positioned ^ ^ ^0.4 if entity @s[distance=..3.2] if block ~ ~ ~ #lib:no_collision run function player:combat/main/dagger/rec