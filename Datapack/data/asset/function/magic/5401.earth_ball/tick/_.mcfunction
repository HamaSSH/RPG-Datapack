#> asset:magic/5401.earth_ball/tick/_
# 魔法のtick時の処理

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,dx=0,limit=1] run function asset:magic/5401.earth_ball/tick/detected
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:every_mob,tag=Enemy,tag=MagicHit,dx=0,sort=nearest,limit=1] at @s run function asset:magic/5401.earth_ball/tick/hit/aoe

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] at @s run function asset:magic/5401.earth_ball/tick/hit/_

# 演出
    execute if predicate lib:percentage/50 run particle enchant ~ ~ ~ 0.3 0.3 0.3 0.2 10 force
    particle dust{color:[0.592,0.392,0.227],scale:2} ~ ~ ~ 0.2 0.2 0.2 0 3 force
    particle dust{color:[0.592,0.392,0.227],scale:2} ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
    particle dust{color:[0.792,0.549,0.353],scale:1.5} ~ ~ ~ 0.4 0.4 0.4 0 5 force
    particle dust{color:[0.792,0.549,0.353],scale:1.5} ^ ^ ^0.5 0.4 0.4 0.4 0 4 force

# 移動
    tp ^ ^ ^1
    execute if entity @s[tag=!PassThrough] unless block ^ ^ ^ #lib:no_collision run kill @s
    execute if entity @s[tag=!PassThrough] unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# ホーミング
    data modify storage lib: HomingAngle set value 300
    function lib:homing/_

# 時間経過でkill
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 20.. run tag @s add Kill
    execute if entity @s[tag=Kill] run kill @s

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    data remove storage lib: HomingAngle