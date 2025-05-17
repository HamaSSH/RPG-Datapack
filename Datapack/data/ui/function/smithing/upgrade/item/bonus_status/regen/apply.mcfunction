#> ui:smithing/upgrade/item/bonus_status/regen/apply
# マクロでbonusタグと関連のLoreの設定

$data modify storage ui: Result.display.Lore append value '{"text":"\\uF823\\uE$(icon)\\uF823","extra":[{"text":"$(text): ","color":"#E0E0E0"},{"text":"$(sign)$(int).$(1d)$(2d)/s","color":"$(color)"}],"italic":false,"color":"white"}'