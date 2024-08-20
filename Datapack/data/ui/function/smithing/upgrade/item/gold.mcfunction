#> ui:smithing/upgrade/item/gold
# 強化に必要なゴールドの計算

execute store result score $ItemRarity Temporary run data get storage ui: ItemData.rarity
execute store result score $ItemGrade Temporary run data get storage ui: ItemData.grade
scoreboard players add $ItemGrade Temporary 1
scoreboard players set $UpgradeGold Temporary 200
scoreboard players operation $UpgradeGold Temporary *= $ItemGrade Temporary
scoreboard players operation $UpgradeGold Temporary *= $ItemRarity Temporary