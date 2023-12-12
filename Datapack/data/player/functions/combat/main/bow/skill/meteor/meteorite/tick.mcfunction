#> player:combat/main/bow/skill/meteor/meteorite/tick
# ため攻撃隕石矢の常時実行

data modify entity @s PierceLevel set value 5

# 演出
    particle crit ~ ~ ~ 0.1 0.1 0.1 0.1 1 force
    particle dust_color_transition 1 0.804 0.169 1 1 0.125 0.023 ~ ~ ~ 0.07 0.07 0.07 0 2 force

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run function player:combat/main/bow/skill/meteor/meteorite/landed