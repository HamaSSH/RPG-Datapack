#> ui:particle
# UIラマに対する常時実行処理

# プレイヤーを押し出さないように
    execute if entity @s[team=!NoCollision] run team join NoCollision @s

# パーティクル
    execute if entity @s[tag=BrewingMule] run particle dust_color_transition{from_color:[0.72,0.75,0.31],to_color:[1.0,1.0,1.0],scale:1} ~ ~0.1 ~ 0.3 0 0.3 0 7 force
    execute if entity @s[tag=CookingMule] run particle dust_color_transition{from_color:[1.0,0.76,0.35],to_color:[1.0,1.0,1.0],scale:1} ~ ~0.1 ~ 0.35 0 0.35 0 10 force
    execute if entity @s[tag=SmithingMule] run particle dust_color_transition{from_color:[0.74,0.98,1.0],to_color:[1.0,1.0,1.0],scale:1} ~ ~0.1 ~ 0.35 0 0.35 0 10 force
    execute if entity @s[tag=EnchantingMule] run particle dust_color_transition{from_color:[0.83,0.66,1.0],to_color:[1.0,1.0,1.0],scale:1} ~ ~0.1 ~ 0.35 0 0.35 0 15 force