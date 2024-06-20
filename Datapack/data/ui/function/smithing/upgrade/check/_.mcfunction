#> ui:smithing/upgrade/check/_
# 強化できるか(十分なアイテムを持っているか)確認

tag @s add Upgradable

# 強化するアイテムのデータ→storage
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data
    data modify storage ui: ItemData.count set from storage ui: NewItems[{Slot:10b}].count
    data modify storage ui: ItemData.display.Lore set from storage ui: NewItems[{Slot:10b}].components.minecraft:lore
    data remove storage ui: ItemData.components.minecraft:attribute_modifierst

# 強化用アイテムデータの整形
    data modify storage ui: Material set from storage ui: ItemData.ui.upgrade[0]
    data remove storage ui: Material[].components.item_name
    data remove storage ui: Material[].components.lore
    data remove storage ui: Material[].components.custom_data

# 最大で3回まで強化可能
    execute if data storage ui: ItemData{grade:3} run tag @s remove Upgradable

# 強化アイテムを持っているか1つずつ確認
    execute if data storage ui: Material[0] run function ui:smithing/upgrade/check/rec
    execute if entity @s[tag=Upgradable] run function ui:smithing/upgrade/_

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound ui.button.click master @s ~ ~ ~ 0.2 1.8
    execute if entity @s[tag=PlaysoundOnce] run tag @s remove PlaysoundOnce

# リセット
    data remove storage ui: ItemData