#> ui:brewing/brew/_
# 醸造処理

# スロットに先客が居ればまず返却
    execute if data storage ui: Items[{id:"minecraft:potion"}] run data modify storage ui: ReturnItems append from storage ui: Items[{id:"minecraft:potion"}]
    execute if data storage ui: ReturnItems[] run function ui:return_item/_
    data remove storage ui: Items[{id:"minecraft:potion"}]

# クラフトポーションの生成
    data modify storage ui: Results append value {id:"potion",Slot:14b,components:{"minecraft:hide_additional_tooltip":{}}}
    data modify storage ui: Results append value {id:"potion",Slot:15b,components:{"minecraft:hide_additional_tooltip":{}}}
    data modify storage ui: Results append value {id:"potion",Slot:16b,components:{"minecraft:hide_additional_tooltip":{}}}

# ポーションの色を決定
    function ui:brewing/brew/potion/color
    data modify storage ui: Results[].components.minecraft:potion_contents.custom_color set from storage ui: PotionData.color

# ポーションのバフ情報を決定
    function ui:brewing/brew/potion/buff/_
    data remove storage ui: PotionData.buff[].ID
    data modify storage ui: Results[].components.minecraft:custom_data.consumables.buff set from storage ui: PotionData.buff
    data modify storage ui: Results[].components.minecraft:custom_data.consumables.custom_potion set value 1b

# ポーションのdisplayの設定
    function ui:brewing/brew/potion/display
    data modify storage ui: Results[].components.minecraft:tooltip_style set from storage ui: PotionData.tooltip_style
    data modify storage ui: Results[].components.minecraft:custom_name set from storage ui: PotionData.Name
    data modify storage ui: Results[].components.minecraft:lore set from storage ui: PotionData.Lore

# 素材アイテムの消費
    execute store result storage ui: NewItems[{Slot:10b}].count byte 0.999 run data get storage ui: NewItems[{Slot:10b}].count
    execute store result storage ui: NewItems[{Slot:11b}].count byte 0.999 run data get storage ui: NewItems[{Slot:11b}].count
    execute store result storage ui: NewItems[{Slot:12b}].count byte 0.999 run data get storage ui: NewItems[{Slot:12b}].count
    data remove storage ui: NewItems[{count:0b}]

# 演出
    playsound block.brewing_stand.brew master @a ~ ~ ~ 0.5 0.9
    playsound block.bubble_column.upwards_inside master @a ~ ~ ~ 0.75 2
    playsound item.firecharge.use master @a ~ ~ ~ 0.35 1.3

# リセット
    tag @s remove PlaysoundOnce
    data remove storage ui: Ingredient
    data remove storage ui: PotionData