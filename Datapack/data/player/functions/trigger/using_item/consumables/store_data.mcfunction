#> player:trigger/using_item/consumables/store_data
# アイテムデータの格納

$execute if predicate player:consumables/mainhand run data modify storage player: $(MCID).Consumables set from storage player: SelectedItem.tag.Consumables
$execute if predicate player:consumables/offhand run data modify storage player: $(MCID).Consumables set from storage player: Offhand.tag.Consumables