#> player:combat/main/wand/uncharged
# 攻撃クールダウンを待たず攻撃した場合

# 演出
    execute if score @s ElementTimer matches 0 run particle witch ~ ~ ~ 0.05 0.05 0.05 1 3 force
    playsound resource:custom.weapon.fail master @a ~ ~ ~ 1.0 1.0