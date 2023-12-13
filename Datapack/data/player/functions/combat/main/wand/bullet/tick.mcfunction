#> player:combat/main/wand/bullet/tick
# 杖の弾のtick処理

# データをスコアに格納
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0,limit=1] run function player:combat/main/wand/bullet/detected

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] at @s run function player:combat/main/wand/bullet/hit

# 移動
    tp @s ^ ^ ^1
    execute unless block ^ ^ ^ #lib:no_collision run kill @s
    execute unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# 演出
    function player:combat/main/wand/bullet/sfx/_

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    tag @s remove Attacker