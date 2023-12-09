#> player:combat/main/bow/arrow/tick
# 矢の常時実行処理

# パーティクル
    execute if entity @s[tag=Charged] run particle crit ~ ~ ~ 0.07 0.07 0.07 0 3 force

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run function player:combat/main/bow/arrow/land