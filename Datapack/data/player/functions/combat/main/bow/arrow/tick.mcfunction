#> player:combat/main/bow/arrow/tick
# 矢の常時実行処理

# パーティクル
    function player:combat/main/bow/arrow/particle

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run function player:combat/main/bow/arrow/land