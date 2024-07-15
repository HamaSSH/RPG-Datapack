#> ui:brewing/brew/potion/buff/status/apply
# エフェクトのLoreの生成

$data modify storage ui: PotionData.StatusLore append value '{"text":"\\uF823\\uE$(icon)\\uF823","extra":[{"text":"$(text): ","color":"#E0E0E0"},{"text":"$(sign)$(amplifier)（$(min):$(10s)$(1s)）","color":"$(color)"}],"italic":false,"color":"white"}'