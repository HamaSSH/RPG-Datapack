#> player:combat/main/bow/skill/meteor/meteorite/tick
# ため攻撃隕石矢の常時実行

data modify entity @s PierceLevel set value 30

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run function player:combat/main/bow/skill/meteor/meteorite/landed