#> player:combat/main/hammer/_
# 短剣の当たり判定呼び出し

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/hammer/rec
    scoreboard players set $MotionPower Temporary 100
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit] run function player:combat/main/hit

# 演出
    particle explosion ^ ^0.7 ^1.2 0 0 0 0.1 1 force
    playsound resource:custom.weapon.hammer master @a ~ ~ ~ 1.0 1.0