#> ui:smithing/combine/item/bonus_status/regen/apply
# マクロでBonusタグと関連のLoreの設定

$data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.bonus[{status:$(status)}].value set from storage ui: ItemData.bonus[0].amplifier
$data modify storage ui: Result.display.Lore append value '{"text":"\\uE$(icon)▸ ","extra":[{"text":"$(text): ","color":"#E0E0E0"},{"text":"$(sign)$(int).$(dec)/s","color":"$(color)"}],"italic":false,"color":"white"}'