#> ui:smithing/upgrade/_
# 強化処理

# 強化用アイテムのclear
    function ui:smithing/upgrade/clear/_

# アイテムの強化
    data modify storage ui: UpgradeData.Bonus set from storage ui: NewItems[{Slot:10b}].tag.Bonus
    execute if data storage ui: UpgradeData.Bonus[] run function ui:smithing/upgrade/item/bonus_status with storage ui: UpgradeData.Bonus[0]

# アイテムのGradeとRarity操作
    execute store result score $ItemGrade Temporary run data get storage ui: Items[{Slot:10b}].tag.Grade
    execute store result score $ItemRarity Temporary run data get storage ui: NewItems[{Slot:10b}].tag.Rarity
    scoreboard players add $ItemGrade Temporary 1
    execute if score $ItemGrade Temporary matches 3.. run scoreboard players add $ItemRarity Temporary 1
    execute store result storage ui: NewItems[{Slot:10b}].tag.Grade int 1 run scoreboard players get $ItemGrade Temporary
    execute store result storage ui: NewItems[{Slot:10b}].tag.Rarity int 1 run scoreboard players get $ItemRarity Temporary

# アイテムのdisplay設定
    function ui:smithing/upgrade/item/display

# 演出
    playsound block.anvil.place master @p ~ ~ ~ 0.9 1.5
    playsound block.anvil.destroy master @p ~ ~ ~ 0.7 0.7
    playsound block.anvil.use master @p ~ ~ ~ 0.6

# リセット
    data remove storage ui: UpgradeData
    scoreboard players reset $ItemGrade Temporary
    scoreboard players reset $ItemRarity Temporary