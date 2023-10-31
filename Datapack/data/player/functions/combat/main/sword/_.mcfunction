#> player:combat/main/sword/_
# 刀剣の当たり判定呼び出し

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/sword/rec

# HIT処理
    scoreboard players set $MotionPower Temporary 100
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] rotated ~ 60 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit

# 演出
    particle sweep_attack ^ ^1 ^1 0 0 0 0.01 1 force
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 1.0 1.0