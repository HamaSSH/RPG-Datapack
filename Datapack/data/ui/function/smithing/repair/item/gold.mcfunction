#> ui:smithing/repair/item/gold
# 修理に必要なゴールドの計算

# 修理回数・レアリティ・耐久値に応じて変動
    scoreboard players set $RepairGold Temporary 60
    # レアリティ
        execute store result score $ItemRarity Temporary run data get storage ui: ItemData.rarity
        scoreboard players operation $RepairGold Temporary *= $ItemRarity Temporary
    # 修理回数
        execute store result score $ToolGrade Temporary run data get storage ui: ItemData.tool.grade
        scoreboard players add $ToolGrade Temporary 25
        scoreboard players operation $ToolGrade Temporary *= $ItemRarity Temporary
        scoreboard players operation $RepairGold Temporary += $ToolGrade Temporary
    # 消費耐久値
        scoreboard players operation $ItemRarity Temporary *= #2 Constant
        scoreboard players add $ItemRarity Temporary 2
        execute store result score $Durability Temporary run data get storage ui: ItemData.tool.durability
        execute store result score $RemainingUse Temporary run data get storage ui: ItemData.tool.remaining_use
        scoreboard players operation $Durability Temporary -= $RemainingUse Temporary
        scoreboard players operation $Durability Temporary *= $ItemRarity Temporary
        scoreboard players operation $RepairGold Temporary += $Durability Temporary

# 耐久値を消費していなければノーカン
    execute store result score $Durability Temporary run data get storage ui: ItemData.tool.durability
    execute if score $Durability Temporary = $RemainingUse Temporary run scoreboard players set $RepairGold Temporary 0