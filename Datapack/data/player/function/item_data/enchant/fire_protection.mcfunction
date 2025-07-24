#> player:item_data/enchant/fire_protection
# 炎上ダメージを無効化する

# 炎上耐性エフェクト
    execute if entity @s[tag=!FireProtEnch] run data modify storage player: NewBuff set value [{effect:"fire_resistance",duration:1000000000,amplifier:0,source:"enchant"}]
    execute if entity @s[tag=!FireProtEnch] run function player:buff/_
    tag @s add FireProtEnch

# リセット
    data remove storage player: Enchant[{id:"fire_protection"}]