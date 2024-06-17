#> player:combat/main/dagger/uncharged
# 攻撃クールダウンを待たず攻撃した場合

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/dagger/rec

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=DaggerHit,tag=!HurtTime,distance=..6] run tag @s add Hit
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=DaggerHit,distance=..6] run tag @s remove DaggerHit

# 演出
    execute positioned ~ ~1.4 ~ run particle enchanted_hit ^ ^ ^2 0.5 0.1 0.5 0.5 2
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0