# 当たり判定タグ付け
    scoreboard players add $YPower Temporary 50
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] run tag @s add Hit
    execute as @e[type=#mob:mobs,tag=Hit,tag=Enemy,tag=!HurtTime,distance=..2] run function combat:main/hit
# 当たり判定可視化
    # particle wax_on ~-0.5 ~-0.5 ~-0.5 0 0 0 0 10 force
    # particle wax_off ~0.5 ~0.5 ~0.5 0 0 0 0 10 force
# リーチの限界まで再帰
    execute if entity @s[distance=..7] positioned ^ ^ ^1 run function combat:main/spear/skill/rec