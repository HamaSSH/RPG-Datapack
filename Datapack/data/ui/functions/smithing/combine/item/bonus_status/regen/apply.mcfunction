#> ui:smithing/combine/item/bonus_status/regen/apply
# マクロでBonusタグと関連のLoreの設定

$data modify storage ui: NewItems[{Slot:10b}].tag.Bonus[{Status:$(Status)}].Value set from storage ui: ItemData.Bonus[0].Amplifier
$data modify storage ui: Result.display.Lore append value '{"text":"\\uE$(Icon)▸ ","extra":[{"text":"$(Text): ","color":"#E0E0E0"},{"text":"$(Sign)$(AmplifierInt).$(AmplifierDec)/s","color":"$(Color)"}],"italic":false,"color":"white"}'