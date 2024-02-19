#> ui:smithing/upgrade/item/bonus_status/new
# ExBonusによって新たに追加される補正ステータス

data modify storage ui: ItemData.Bonus append from storage ui: ItemData.ExBonus[0]
data remove storage ui: ItemData.ExBonus[0]