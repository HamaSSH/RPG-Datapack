#> world:flags/dungeon_cave
# フラグが1bになった際の処理

# ソウビのラインナップ更新
    data modify entity 83a-51-1-0-100000001 ArmorItems[3].components.minecraft:custom_data.shop_data prepend value ["iron_helmet","iron_chestplate","iron_leggings","iron_boots","ring_of_power","ring_of_wisdom"]
    data modify entity 83a-51-1-0-100000001 ArmorItems[3].components.minecraft:custom_data.shop_data prepend value ["iron_dagger","iron_sword","iron_spear","iron_hammer","iron_wand","iron_bow"]

# 処理は1度きり！
    data modify storage global: flags.dungeon_cave set value 2b