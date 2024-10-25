#> player:item_data/enchant/jump_boost
# ジャンプ力を少し強化する

# attributeで強化
    attribute @s jump_strength modifier add jump_boost 0.2 add_value
    attribute @s safe_fall_distance modifier add jump_boost 1.0 add_value

# リセット
    data remove storage player: Enchant[{id:"jump_boost"}]