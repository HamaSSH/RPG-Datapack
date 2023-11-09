#> player:combat/main/wand/tick
# 杖の弾のtick処理

# 当たり判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,dx=0] run function player:combat/main/wand/detected

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/wand/hit

# 移動
    tp @s ^ ^ ^1
    execute unless block ^ ^ ^ #lib:no_collision run kill @s
    execute unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# 演出
    particle witch ~ ~ ~ 0.1 0.1 0.1 0 2 force
    particle witch ^ ^ ^0.5 0.1 0.1 0.1 0 1 force