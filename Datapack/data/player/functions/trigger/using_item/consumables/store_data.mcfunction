#> player:trigger/using_item/consumables/store_data
# アイテムデータの格納

$execute if predicate player:consumables/mainhand run data modify storage player: $(MCID).Consumables set from storage player: SelectedItem.components.minecraft:custom_data.consumables
$execute if predicate player:consumables/offhand run data modify storage player: $(MCID).Consumables set from storage player: Inventory[{Slot:-106b}].components.minecraft:custom_data.consumables