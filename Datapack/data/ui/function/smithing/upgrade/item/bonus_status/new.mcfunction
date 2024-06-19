#> ui:smithing/upgrade/item/bonus_status/new
# combine_bonusによって新たに追加される補正ステータス

data modify storage ui: ItemData.base_bonus append from storage ui: ItemData.combine_bonus[]
data modify storage ui: ItemData.bonus append from storage ui: ItemData.combine_bonus[]
data remove storage ui: ItemData.combine_bonus