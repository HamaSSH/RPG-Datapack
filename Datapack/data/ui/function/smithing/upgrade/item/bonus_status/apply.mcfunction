#> ui:smithing/upgrade/item/bonus_status/apply
# マクロでBonusタグと関連のLoreの設定

$data modify storage ui: Result.display.Lore append value '{"text":"\\uF823\\uE$(icon)\\uF823","extra":[{"text":"$(text): ","color":"#E0E0E0"},{"text":"$(sign)$(value)","color":"$(color)"}],"italic":false,"color":"white"}'