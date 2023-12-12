#> player:combat/main/dagger/charged
# 武器の当たり判定呼び出し

# 当たり判定
    execute if entity @s[tag=!DaggerSkill] anchored eyes positioned ^ ^ ^ run function player:combat/main/dagger/rec
    execute if entity @s[tag=DaggerSkill] anchored eyes positioned ^ ^ ^ run function player:combat/main/dagger/skill/rec

# ため攻撃中(当たり判定無視するか)
    execute if entity @p[tag=Attacker,tag=!DaggerSkill] as @e[type=#lib:every_mob,tag=Enemy,tag=DaggerHit,tag=!HurtTime,distance=..6] run tag @s add Hit
    execute if entity @p[tag=Attacker,tag=DaggerSkill] as @e[type=#lib:every_mob,tag=Enemy,tag=DaggerHit,distance=..6] unless score @s HurtTime matches 8.. run tag @s add Hit
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=DaggerHit,distance=..6] run tag @s remove DaggerHit

# HIT処理
    scoreboard players set $MotionPower Temporary 60
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] rotated ~ 60 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit

# 演出
    particle enchanted_hit ^ ^1.4 ^2 0.5 0.2 0.5 0.5 15 force
    playsound resource:custom.weapon.dagger master @a ~ ~ ~ 1.0 1.0