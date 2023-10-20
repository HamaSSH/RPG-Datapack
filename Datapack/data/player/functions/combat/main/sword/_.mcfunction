#> player:combat/main/sword/_
# 短剣の当たり判定呼び出し

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/sword/rec
    scoreboard players set $MotionPower Temporary 100
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit] run function player:combat/main/hit

# 演出
    particle sweep_attack ^ ^1 ^1 0 0 0 0.01 1 force
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 1.0 1.0