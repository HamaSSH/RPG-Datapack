#> ui:brewing/brew/potion/buff/status/regen/apply
# マクロでBonusタグと関連のLoreの設定

$data modify storage ui: PotionData.StatusLore append value '{"text":"\\uE$(icon)▸ ","extra":[{"text":"$(text): ","color":"#E0E0E0"},{"text":"$(sign)$(int).$(1d)$(2d)/s（$(min):$(10s)$(1s)）","color":"$(color)"}],"italic":false,"color":"white"}'