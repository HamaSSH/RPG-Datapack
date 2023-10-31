#> player:combat/main/spear/uncharged
# 武器の攻撃クールダウンを待たず攻撃した場合

# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/spear/rec

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/hit

# 演出(槍失敗)
    particle crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 1
    particle crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 1
    particle crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 1
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0