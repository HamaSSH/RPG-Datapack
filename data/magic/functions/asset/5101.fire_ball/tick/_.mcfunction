# 前進
    tp ^ ^ ^1
# 当たり判定
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0,sort=nearest,limit=1] run tag @s add Hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#mob:mobs,tag=Enemy,tag=Hit,dx=0,limit=1] run data modify entity @s Age set value 20
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mob:mobs,tag=Enemy,tag=Hit,dx=0,sort=nearest,limit=1] run function magic:asset/5101.fire_ball/hit
# 演出
    particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
    particle minecraft:dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle minecraft:dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle minecraft:dust_color_transition 1 0.859 0.392 2 1 0.494 0.153 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle minecraft:dust_color_transition 1 0.859 0.392 2 1 0.494 0.153 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.02 8 force
# リセット
    execute unless block ^ ^ ^1 #combat:pass run kill @s
    scoreboard players reset $DmgDealt