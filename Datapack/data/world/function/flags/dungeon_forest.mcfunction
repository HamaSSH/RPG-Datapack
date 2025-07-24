#> world:flags/dungeon_forest
# フラグが1bになった際の処理

# ソウビのラインナップ更新
    data modify entity 83a-51-1-0-100000001 ArmorItems[3].components.minecraft:custom_data.shop_data prepend value ["copper_helmet","copper_chestplate","copper_leggings","copper_boots","ring_of_power","ring_of_wisdom"]
    data modify entity 83a-51-1-0-100000001 ArmorItems[3].components.minecraft:custom_data.shop_data prepend value ["stone_dagger","stone_sword","stone_spear","stone_hammer","stone_wand","stone_bow"]

# 処理は1度きり！
    data modify storage global: flags.dungeon_forest set value 2b