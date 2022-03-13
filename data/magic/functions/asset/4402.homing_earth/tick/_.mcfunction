# ホーミング
    tp @s ^ ^ ^1
    function attack:main/wand/homing
# 当たり判定
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0,sort=nearest,limit=1] run tag @s add Hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#mob:mobs,tag=Enemy,tag=Hit,dx=0,limit=1] run data modify entity @s Age set value 50
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mob:mobs,tag=Enemy,tag=Hit,dx=0,sort=nearest,limit=1] run function magic:asset/4402.homing_earth/hit
# 演出
    particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
    particle minecraft:dust 0.592 0.392 0.227 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle minecraft:dust 0.592 0.392 0.227 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle minecraft:dust 0.792 0.549 0.353 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle minecraft:dust 0.792 0.549 0.353 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
# リセット
    scoreboard players reset $DmgDealt