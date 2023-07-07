#> asset:magic/5501.wind_ball/tick/_
# 魔法のtick時の処理

tp ^ ^ ^1
# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# ヒットチェック
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0,sort=nearest,limit=1] run tag @s add Hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,dx=0,sort=nearest,limit=1] at @s run function asset:magic/5501.wind_ball/tick/hit/_

# 演出
    particle enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
    particle dust 0.478 0.784 0.275 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle dust 0.478 0.784 0.275 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle dust 0.725 1 0.506 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
    particle dust 0.725 1 0.506 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force

# 時間経過でkill
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 20.. run kill @s

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary