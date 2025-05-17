#> ui:smithing/combine/item/bonus_status/lore/apply
# リジェネ以外のステータスのloreの適用

$data modify storage ui: Result.display.Lore append value {"text":"\uF823\uE$(icon)\uF823","extra":[{"text":"$(text): ","color":"#E0E0E0"},{"text":"$(sign)$(value)","color":"$(color)"}],"italic":false,"color":"white"}