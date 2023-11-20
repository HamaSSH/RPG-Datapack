#> asset:magic/5201.water_ball/tick/_
# 魔法のtick時の処理

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0,limit=1] run function asset:magic/5201.water_ball/tick/detected
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=MagicHit,dx=0,sort=nearest,limit=1] at @s run function asset:magic/5201.water_ball/tick/hit/aoe

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] at @s run function asset:magic/5201.water_ball/tick/hit/_

# 演出
    particle enchant ~ ~ ~ 0.2 0.2 0.2 0 10 force
    particle dust 0.231 0.384 0.894 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle dust 0.231 0.384 0.894 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle dust 0.518 0.71 1 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle dust 0.518 0.71 1 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.03 15 force

# 移動
    tp ^ ^ ^1
    execute unless block ^ ^ ^ #lib:no_collision run kill @s
    execute unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# 時間経過でkill
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 20.. run tag @s add Kill
    execute if entity @s[tag=Kill] run kill @s

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary