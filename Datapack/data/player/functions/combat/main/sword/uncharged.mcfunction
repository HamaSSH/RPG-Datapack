#> player:combat/main/sword/uncharged
# 攻撃クールダウンを待たず攻撃した場合

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/sword/rec
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=SwordHit,distance=..6,sort=nearest,limit=1] at @s run function player:combat/main/sword/aoe

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit

# 演出
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 0.01 1
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0