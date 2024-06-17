#> ui:smithing/upgrade/check/_
# 強化できるか(十分なアイテムを持っているか)確認

tag @s add Upgradable

# 強化するアイテムのデータ→storage
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].tag
    data remove storage ui: ItemData.AttributeModifiers

# 強化用アイテムデータの整形
    data modify storage ui: Material set from storage ui: ItemData.UI.Upgrade[0]
    data remove storage ui: Material[].components.minecraft:item_name
    data remove storage ui: Material[].components.minecraft:lore
    data remove storage ui: Material[].components.minecraft:custom_data.ui

# 最大で3回まで強化可能
    execute if data storage ui: ItemData{Grade:3} run tag @s remove Upgradable

# 強化アイテムを持っているか1つずつ確認
    execute if data storage ui: Material[0] run function ui:smithing/upgrade/check/rec
    execute if entity @s[tag=Upgradable] run function ui:smithing/upgrade/_

# リセット
    data remove storage ui: ItemData