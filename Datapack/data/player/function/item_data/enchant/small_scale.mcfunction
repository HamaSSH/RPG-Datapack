#> player:item_data/enchant/small_scale
# プレイヤーの体が縮小する

# attributeで縮小
    attribute @s scale modifier add small_scale -0.3 add_multiplied_base

# リセット
    data remove storage player: Enchant[{id:"small_scale"}]