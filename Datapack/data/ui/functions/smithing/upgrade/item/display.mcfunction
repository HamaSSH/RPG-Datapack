#> ui:smithing/upgrade/item/display
# 強化後のアイテムのdisplayを設定

# アイテム名に+強化数
    execute if score $ItemRarity Temporary matches 1 run data modify storage ui: UpgradeData.Color set value "white"
    execute if score $ItemRarity Temporary matches 2 run data modify storage ui: UpgradeData.Color set value "#6FE58D"
    execute if score $ItemRarity Temporary matches 3 run data modify storage ui: UpgradeData.Color set value "#7C7CE8"
    execute if score $ItemRarity Temporary matches 4 run data modify storage ui: UpgradeData.Color set value "#F65A5A"
    execute if score $ItemRarity Temporary matches 5.. run data modify storage ui: UpgradeData.Color set value "#F7F76D"
    data modify storage ui: UpgradeData.BaseName set from storage ui: NewItems[{Slot:10b}].tag.BaseName
    data modify storage ui: UpgradeData.Grade set from storage ui: NewItems[{Slot:10b}].tag.Grade
    function ui:smithing/upgrade/item/name with storage ui: UpgradeData

#

# アイテムのレアリティ
    data modify storage ui: PotionData.Rarity.ItemGroup set from storage ui: NewItems[{Slot:10b}].tag.ItemGroup
    execute store result storage ui: PotionData.Rarity.Value int 1 run scoreboard players get $ItemRarity Temporary
    function ui:brewing/brew/potion/rarity with storage ui: PotionData.Rarity