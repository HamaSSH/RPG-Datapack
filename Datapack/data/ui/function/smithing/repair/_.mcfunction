#> ui:smithing/repair/_
# ツール修理処理

# 修理するアイテムのデータ→storage
    data modify storage ui: ItemData set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data
    data modify storage ui: ItemData.display.Name set from storage ui: NewItems[{Slot:10b}].components.minecraft:item_name
    data modify storage ui: ItemData.display.Lore set from storage ui: NewItems[{Slot:10b}].components.minecraft:lore

# アイテムの説明文はそのまま
    execute store result score $ItemLore Temporary run data get storage ui: ItemData.lore_length
    execute if score $ItemLore Temporary matches 1.. run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[0]
    execute if score $ItemLore Temporary matches 2 run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[1]
    data modify storage ui: Result.display.Lore append value '[{"text":"","color":"dark_gray","italic":false,"strikethrough":true},{"text":"                          "}]'

# 耐久値UP
    execute store result score $Durability Temporary run data get storage ui: ItemData.tool.durability
    execute store result score $RemainingUse Temporary run data get storage ui: ItemData.tool.remaining_use
    scoreboard players operation $RemainingUse Temporary -= $Durability Temporary
    scoreboard players operation $Durability Temporary -= $RemainingUse Temporary
    execute store result storage ui: ItemData.tool.durability int 1 run scoreboard players get $Durability Temporary
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.tool.durability set from storage ui: ItemData.tool.durability
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.tool.remaining_use set from storage ui: ItemData.tool.durability
    function ui:smithing/repair/item/durability with storage ui: ItemData.tool

# 耐久値バーのリセット
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:damage set value 0

# アイテムLoreの下3行
    data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[-3]
    data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[-2]
    data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[-1]

# アイテムのGrade操作
    execute store result score $ToolGrade Temporary run data get storage ui: ItemData.tool.grade
    execute store result storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.tool.grade int 1 run scoreboard players add $ToolGrade Temporary 1

# # displayの適用
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:item_name set from storage ui: Result.display.Name
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:lore set from storage ui: Result.display.Lore

# 演出
    playsound resource:block.smithing_table.smithing_table2 master @a ~ ~ ~ 0.8
    playsound resource:block.smithing_table.smithing_table3 master @a ~ ~ ~ 0.7 1.8

# リセット
    tag @s remove PlaysoundOnce
    data remove storage ui: ItemData
    data remove storage ui: Result
    scoreboard players reset $ToolGrade Temporary
    scoreboard players reset $ItemRarity Temporary
    scoreboard players reset $RemainingUse Temporary
    scoreboard players reset $Durability Temporary