##########
#>
#

# 当たり判定タグ付け
    execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run tag @s add Hit
# 当たり判定可視化
    # particle wax_on ~-0.1 ~-0.1 ~-0.1 0 0 0 0 10 force
    # particle wax_off ~0.1 ~0.1 ~0.1 0 0 0 0 10 force
# リーチの限界まで再帰
    execute positioned ^ ^ ^0.2 if entity @s[distance=..4.5] run function combat:main/spear/rec