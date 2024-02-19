#> ui:smithing/upgrade/_
# 強化処理

# 強化用アイテムのclear
    function ui:smithing/upgrade/clear/_
    data remove storage ui: ItemData.UI

# アイテムの強化
    execute store result score $ItemBonus Temporary if data storage ui: ItemData.Bonus[]
    execute if data storage ui: ItemData.Bonus[] run function ui:smithing/upgrade/item/bonus_status/_

# アイテムのGradeとRarity操作
    execute store result score $ItemGrade Temporary run data get storage ui: ItemData.Grade
    execute store result score $ItemRarity Temporary run data get storage ui: ItemData.Rarity
    scoreboard players add $ItemGrade Temporary 1
    execute if score $ItemGrade Temporary matches 3.. run scoreboard players add $ItemRarity Temporary 1
    execute if score $ItemRarity Temporary matches 5.. run scoreboard players set $ItemRarity Temporary 5
    execute store result storage ui: NewItems[{Slot:10b}].tag.Grade int 1 run scoreboard players get $ItemGrade Temporary
    execute store result storage ui: NewItems[{Slot:10b}].tag.Rarity int 1 run scoreboard players get $ItemRarity Temporary

# アイテムのdisplay設定
    function ui:smithing/upgrade/item/display

# 演出
    playsound block.anvil.place master @p ~ ~ ~ 0.9 1.5
    playsound block.anvil.destroy master @p ~ ~ ~ 0.7 0.7
    playsound block.anvil.use master @p ~ ~ ~ 0.6

# リセット
    scoreboard players reset $ItemBonus Temporary
    scoreboard players reset $ItemGrade Temporary
    scoreboard players reset $ItemRarity Temporary