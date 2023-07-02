##########
#>
#

# 前進
    tp ^ ^ ^1
# 当たり判定
    scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0,sort=nearest,limit=1] run tag @s add Hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,tag=Hit,dx=0,limit=1] run data modify entity @s Age set value 20
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,dx=0,sort=nearest,limit=1] run function magic:asset/5501.wind_ball/hit
# 演出
    particle enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
    particle dust 0.478 0.784 0.275 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle dust 0.478 0.784 0.275 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle dust 0.725 1 0.506 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle dust 0.725 1 0.506 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
# リセット
    execute unless block ^ ^ ^1 #combat:pass run kill @s
    scoreboard players reset $DmgDealt