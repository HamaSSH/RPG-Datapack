#> ui:brewing/brew/potion/buff/status/apply
# エフェクトのLoreの生成

$data modify storage ui: PotionData.StatusLore append value '{"text":"\\uE$(Icon)▸ ","extra":[{"text":"$(Text): ","color":"#E0E0E0"},{"text":"$(Sign)$(amplifier)（$(Min):$(10Sec)$(Sec)）","color":"$(Color)"}],"italic":false,"color":"white"}'