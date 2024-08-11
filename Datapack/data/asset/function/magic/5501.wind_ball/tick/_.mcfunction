#> asset:magic/5501.wind_ball/tick/_
# 魔法のtick時の処理

tp ^ ^ ^1

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,dx=0,limit=1] run function asset:magic/5501.wind_ball/tick/detected
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=MagicHit,dx=0,sort=nearest,limit=1] at @s run function asset:magic/5501.wind_ball/tick/hit/aoe
    # 壁に当たった場合
        execute if entity @s[tag=!PassThrough] unless block ^ ^ ^ #lib:no_collision run function asset:magic/5501.wind_ball/tick/hit/block
        execute if entity @s[tag=!PassThrough] unless block ^ ^ ^0.5 #lib:no_collision run function asset:magic/5501.wind_ball/tick/hit/block

# 演出
    execute if predicate lib:percentage/50 run particle enchant ~ ~ ~ 0.3 0.3 0.3 0.2 10 force
    particle dust{color:[0.478,0.784,0.275],scale:2} ~ ~ ~ 0.2 0.2 0.2 0 3 force
    particle dust{color:[0.478,0.784,0.275],scale:2} ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle dust{color:[0.725,1.0,0.506],scale:1.5} ~ ~ ~ 0.4 0.4 0.4 0 5 force
    particle dust{color:[0.725,1.0,0.506],scale:1.5} ^ ^ ^0.5 0.4 0.4 0.4 0 4 force

# ホーミング
    data modify storage lib: HomingAngle set value 300
    function lib:homing/_

# 時間経過でkill
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 4 run tag @s remove PassThrough
    execute if score @s Timer matches 20.. run tag @s add Kill
    execute if entity @s[tag=Kill] run kill @s

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    data remove storage lib: HomingAngle