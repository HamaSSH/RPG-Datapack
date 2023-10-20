#> player:combat/main/spear/_
# 短剣の当たり判定呼び出し

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/spear/rec
    scoreboard players set $MotionPower Temporary 100
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit] run function player:combat/main/hit

# 演出
    particle crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 2 force
    particle crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 3 force
    particle crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 3 force
    playsound resource:custom.weapon.spear master @a ~ ~ ~ 1.0 1.0