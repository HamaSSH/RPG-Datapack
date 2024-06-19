#> ui:smithing/upgrade/_
# 強化処理

# 強化用アイテムのclear
    function ui:smithing/upgrade/clear/_
    data remove storage ui: ItemData.ui

# アイテムの説明文はそのまま
    execute store result score $ItemLore Temporary if data storage ui: ItemData.display.Lore[]
    execute store result score $ItemBonus Temporary if data storage ui: ItemData.bonus[]
    scoreboard players operation $ItemLore Temporary -= $ItemBonus Temporary
    scoreboard players remove $ItemLore Temporary 3
    execute if score $ItemLore Temporary matches 1.. run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[0]
    execute if score $ItemLore Temporary matches 2 run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[1]
    data modify storage ui: Result.display.Lore append value '[{"text":"","color":"dark_gray","italic": false,"strikethrough":true},{"text":"         "},{"text":"\\uF822装備時\\uF822","color":"#777777","strikethrough":false},{"text":"         "}]'
    data remove storage ui: ItemData.display.Lore

# アイテムの強化
    execute if data storage ui: ItemData.bonus[] run function ui:smithing/upgrade/item/bonus_status/_

# アイテムのGradeとRarity操作
    execute store result score $ItemGrade Temporary run data get storage ui: ItemData.grade
    execute store result score $ItemRarity Temporary run data get storage ui: ItemData.rarity
    scoreboard players add $ItemGrade Temporary 1
    execute if score $ItemGrade Temporary matches 3 run scoreboard players add $ItemRarity Temporary 1
    execute if score $ItemRarity Temporary matches 5.. run scoreboard players set $ItemRarity Temporary 5
    execute store result storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.grade int 1 run scoreboard players get $ItemGrade Temporary
    execute store result storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.rarity int 1 run scoreboard players get $ItemRarity Temporary

# 最大強化になったアイテムのCombineアイテム枠を一つ増やす
    execute if score $ItemGrade Temporary matches 3 if score $ItemRarity Temporary matches 2 run data remove storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.combine[{Slot:12b}]
    execute if score $ItemGrade Temporary matches 3 if score $ItemRarity Temporary matches 3 run data remove storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.combine[{Slot:13b}]
    execute if score $ItemGrade Temporary matches 3 if score $ItemRarity Temporary matches 4 run data remove storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.combine[{Slot:14b}]

# Upgadeタグ(強化に必要なアイテム)を更新
    data remove storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.ui.upgrade[0]

# アイテム名に+強化数
    execute if score $ItemRarity Temporary matches 1 run data modify storage ui: ItemData.color set value "white"
    execute if score $ItemRarity Temporary matches 2 run data modify storage ui: ItemData.color set value "#6FE58D"
    execute if score $ItemRarity Temporary matches 3 run data modify storage ui: ItemData.color set value "#7C7CE8"
    execute if score $ItemRarity Temporary matches 4 run data modify storage ui: ItemData.color set value "#F65A5A"
    execute if score $ItemRarity Temporary matches 5 run data modify storage ui: ItemData.color set value "#F7F76D"
    execute store result storage ui: ItemData.grade int 1 run scoreboard players get $ItemGrade Temporary
    function ui:smithing/upgrade/item/name with storage ui: ItemData
    data remove storage ui: ItemData.display

# アイテムLoreの下2行
    data modify storage ui: Result.display.Lore append value '{"text": "                          ","color": "dark_gray","strikethrough": true}'
    execute store result storage ui: ItemData.rarity int 0.999 run scoreboard players get $ItemRarity Temporary
    function ui:smithing/upgrade/item/rarity with storage ui: ItemData

# displayの適用
    data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.display set from storage ui: Result.display

# 演出
    playsound block.anvil.place master @p ~ ~ ~ 0.9 1.5
    playsound block.anvil.destroy master @p ~ ~ ~ 0.7 0.7
    playsound block.anvil.use master @p ~ ~ ~ 0.6

# リセット
    data remove storage ui: ItemData
    data remove storage ui: Result
    scoreboard players reset $ItemLore Temporary
    scoreboard players reset $ItemBonus Temporary
    scoreboard players reset $ItemGrade Temporary
    scoreboard players reset $ItemRarity Temporary