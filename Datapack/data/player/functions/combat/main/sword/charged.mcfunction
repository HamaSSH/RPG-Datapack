#> player:combat/main/sword/charged
# 刀剣の当たり判定呼び出し

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/sword/rec
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=SwordHit,distance=..6,sort=nearest,limit=1] at @s run function player:combat/main/sword/aoe

# HIT処理
    scoreboard players set $MotionPower Temporary 100
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] rotated ~ 60 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit

# 演出
    function player:combat/main/sword/sfx/_