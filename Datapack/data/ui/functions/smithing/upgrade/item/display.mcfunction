#> ui:smithing/upgrade/item/display
# 強化後のアイテムのdisplayを設定

# アイテムの説明文はそのまま
    execute store result score $ItemLore Temporary if data storage ui: ItemData.display.Lore[]
    scoreboard players operation $ItemLore Temporary -= $ItemBonus Temporary
    scoreboard players remove $ItemLore Temporary 3
    execute if score $ItemLore Temporary matches 1.. run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[0]
    execute if score $ItemLore Temporary matches 2 run data modify storage ui: Result.display.Lore append from storage ui: ItemData.display.Lore[1]
    data modify storage ui: Result.display.Lore append value '[{"text":"","color":"dark_gray","italic": false,"strikethrough":true},{"text":"         "},{"text":"\\uF822装備時\\uF822","color":"#777777","strikethrough":false},{"text":"         "}]'
    data remove storage ui: ItemData.display.Lore

# アイテム名に+強化数
    execute if score $ItemRarity Temporary matches 1 run data modify storage ui: ItemData.Color set value "white"
    execute if score $ItemRarity Temporary matches 2 run data modify storage ui: ItemData.Color set value "#6FE58D"
    execute if score $ItemRarity Temporary matches 3 run data modify storage ui: ItemData.Color set value "#7C7CE8"
    execute if score $ItemRarity Temporary matches 4 run data modify storage ui: ItemData.Color set value "#F65A5A"
    execute if score $ItemRarity Temporary matches 5 run data modify storage ui: ItemData.Color set value "#F7F76D"
    execute store result storage ui: ItemData.Grade int 1 run scoreboard players get $ItemGrade Temporary
    function ui:smithing/upgrade/item/name with storage ui: ItemData
    data remove storage ui: ItemData.display

# ステータス強化情報をもとにLoreを設定
    execute if data storage ui: ItemData.Bonus[] run function ui:brewing/brew/potion/buff/lore
    data modify storage ui: Result.display.Lore append from storage ui: Result.StatusLore[]

# アイテムLoreの下2行
    data modify storage ui: Result.display.Lore append value '{"text": "                          ","color": "dark_gray","strikethrough": true}'
    function ui:smithing/upgrade/item/rarity with storage ui: ItemData

# displayの適用
    data modify storage ui: NewItems[{Slot:10b}].tag.display set from storage ui: Result.display

# リセット
    scoreboard players reset $ItemLore Temporary
    data remove storage ui: Result