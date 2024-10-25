#> ui:enchanting/enchant/camera_overlay
# camera_overlayを特別にエンチャント時処理する

# 装備ごとのequippableの設定
    execute if data storage ui: ItemData.weapon run data modify storage ui: NewItems[{Slot:10b}].components.minecraft:equippable.slot set value "mainhand"
    execute if data storage ui: ItemData{equipment:"helmet"} run data modify storage ui: NewItems[{Slot:10b}].components.minecraft:equippable.slot set value "head"
    execute if data storage ui: ItemData{equipment:"chestplate"} run data modify storage ui: NewItems[{Slot:10b}].components.minecraft:equippable.slot set value "chest"
    execute if data storage ui: ItemData{equipment:"leggings"} run data modify storage ui: NewItems[{Slot:10b}].components.minecraft:equippable.slot set value "legs"
    execute if data storage ui: ItemData{equipment:"boots"} run data modify storage ui: NewItems[{Slot:10b}].components.minecraft:equippable.slot set value "feet"

# bad_sightエンチャント用のcamera_overlay
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:equippable.camera_overlay set value "misc/pumpkinblur"