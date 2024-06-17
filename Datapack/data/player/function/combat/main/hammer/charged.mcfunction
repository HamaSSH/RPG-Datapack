#> player:combat/main/hammer/charged
# 武器の当たり判定呼び出し

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/hammer/rec

# HIT処理
    scoreboard players set $MotionPower Temporary 110
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] rotated ~ 55 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit

# 演出
    function player:combat/main/hammer/sfx/_