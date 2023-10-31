#> player:combat/main/dagger/_
# 短剣の当たり判定呼び出し

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/dagger/rec

# HIT処理
    scoreboard players set $MotionPower Temporary 85
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] rotated ~ 60 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit

# 演出
    particle enchanted_hit ^ ^1.4 ^2 0.5 0.2 0.5 0.5 15 force
    playsound resource:custom.weapon.dagger master @a ~ ~ ~ 1.0 1.0