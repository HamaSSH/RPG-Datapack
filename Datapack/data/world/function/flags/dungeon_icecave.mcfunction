#> world:flags/dungeon_icecave
# フラグが1bになった際の処理

# ソウビのラインナップ更新
    data modify entity 83a-51-1-0-100000001 ArmorItems[3].components.minecraft:custom_data.shop_data prepend value ["golden_helmet","golden_chestplate","golden_leggings","golden_boots","crown","ring_of_wisdom"]
    data modify entity 83a-51-1-0-100000001 ArmorItems[3].components.minecraft:custom_data.shop_data prepend value ["golden_dagger","golden_sword","golden_spear","golden_hammer","golden_wand","golden_bow"]

# 処理は1度きり！
    data modify storage global: flags.dungeon_icecave set value 2b