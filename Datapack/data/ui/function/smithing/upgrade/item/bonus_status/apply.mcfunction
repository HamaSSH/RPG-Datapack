#> ui:smithing/upgrade/item/bonus_status/apply
# マクロでBonusタグと関連のLoreの設定

$data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.base_bonus[{status:$(status)}].value set from storage ui: ItemData.bonus[0].base_amplifier
$data modify storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.bonus[{status:$(status)}].value set from storage ui: ItemData.bonus[0].amplifier
$data modify storage ui: Result.display.Lore append value '{"text":"\\uF823\\uE$(icon)\\uF823","extra":[{"text":"$(text): ","color":"#E0E0E0"},{"text":"$(sign)$(amplifier)","color":"$(color)"}],"italic":false,"color":"white"}'