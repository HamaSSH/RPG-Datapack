#> ui:smithing/upgrade/item/bonus_status/base
# アイテムのbase_bonusの強化

# 補正ステータス値の取得
    execute store result score $NewValue Temporary run data get storage ui: ItemData.base_bonus[0].value
    execute if score $NewValue Temporary matches 1..3 run scoreboard players add $NewValue Temporary 1
    execute if score $NewValue Temporary matches 1..4 run scoreboard players add $NewValue Temporary 1
    execute if score $NewValue Temporary matches 2..5 run scoreboard players add $NewValue Temporary 1
    execute if score $NewValue Temporary matches 3..6 run scoreboard players add $NewValue Temporary 1
    execute if score $NewValue Temporary matches 1.. if score $ItemGrade Temporary matches 1 run scoreboard players operation $NewValue Temporary *= #12 Constant
    execute if score $NewValue Temporary matches 1.. if score $ItemGrade Temporary matches 2 run scoreboard players operation $NewValue Temporary *= #13 Constant
    execute if score $NewValue Temporary matches 1.. if score $ItemGrade Temporary matches 3 run scoreboard players operation $NewValue Temporary *= #14 Constant
    execute if score $NewValue Temporary matches ..0 if score $ItemGrade Temporary matches 1 run scoreboard players operation $NewValue Temporary *= #7 Constant
    execute if score $NewValue Temporary matches ..0 if score $ItemGrade Temporary matches 2 run scoreboard players operation $NewValue Temporary *= #5 Constant
    execute if score $NewValue Temporary matches ..0 if score $ItemGrade Temporary matches 3 run scoreboard players operation $NewValue Temporary *= #0 Constant
    scoreboard players operation $NewValue Temporary /= #10 Constant
    execute store result storage ui: ItemData.base_bonus[0].value int 1 run scoreboard players get $NewValue Temporary
    data modify storage ui: ItemData.new_base_bonus append from storage ui: ItemData.base_bonus[0]
    scoreboard players reset $NewValue Temporary

# 補正ステータスが尽きるまで再帰
    data remove storage ui: ItemData.base_bonus[0]
    execute if data storage ui: ItemData.base_bonus[] run function ui:smithing/upgrade/item/bonus_status/base