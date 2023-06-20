##########
#>
#

# ホーミング
    tp @s ^ ^ ^1
    function combat:main/wand/homing/_
# 当たり判定
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mob:mobs,tag=Enemy,dx=0,sort=nearest,limit=1] run tag @s add Hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#mob:mobs,tag=Enemy,tag=Hit,dx=0,limit=1] run data modify entity @s Age set value 50
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#mob:mobs,tag=Enemy,tag=Hit,dx=0,sort=nearest,limit=1] run function magic:asset/5202.homing_water/hit
# 演出
    particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0 10 force
    particle minecraft:dust 0.231 0.384 0.894 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle minecraft:dust 0.231 0.384 0.894 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle minecraft:dust 0.518 0.71 1 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle minecraft:dust 0.518 0.71 1 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.03 15 force
# リセット
    scoreboard players reset $DmgDealt