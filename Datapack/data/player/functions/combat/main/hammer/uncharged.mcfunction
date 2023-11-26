#> player:combat/main/hammer/uncharged
# 攻撃クールダウンを待たず攻撃した場合

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/hammer/rec

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit

# 演出
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0