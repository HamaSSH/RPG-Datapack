#> ui:smithing/upgrade/item/display
# 強化後のアイテムのdisplayを設定

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
    execute store result storage ui: ItemData.Rarity int 0.99 run scoreboard players get $ItemRarity Temporary
    function ui:smithing/upgrade/item/rarity with storage ui: ItemData

# displayの適用
    data modify storage ui: NewItems[{Slot:10b}].tag.display set from storage ui: Result.display

# リセット
    data remove storage ui: Result