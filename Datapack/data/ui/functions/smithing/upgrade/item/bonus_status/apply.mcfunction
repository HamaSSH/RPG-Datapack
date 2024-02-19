#> ui:smithing/upgrade/item/bonus_status/apply
# マクロでBonusタグと関連のLoreの設定

$execute store result storage ui: NewItems[{Slot:10b}].tag.Bonus[{Status:$(Status)}].Value int 1.3 run data get storage ui: ItemData.Bonus[0].Value