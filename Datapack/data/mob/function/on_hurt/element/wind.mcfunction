#> mob:on_hurt/element/wind
# 風デバフ(吹き飛ばし)

# ギリ落下ダメージあるくらいの吹き飛ばし
    data modify entity @s Motion[1] set value 0.8

# 演出
    particle dust_color_transition{from_color:[0.812,1.0,0.686],to_color:[0.573,1.0,0.173],scale:1} ~ ~0.2 ~ 0.3 0.2 0.3 1 15 force
    particle sweep_attack ~ ~0.1 ~ 0 0 0 0.01 2 force
    playsound entity.goat.screaming.long_jump master @a ~ ~ ~ 0.6 1.5
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.2 1.6