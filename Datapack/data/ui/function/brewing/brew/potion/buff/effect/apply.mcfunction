#> ui:brewing/brew/potion/buff/effect/apply
# エフェクトのLoreの生成

$data modify storage ui: PotionData.EffectLore append value '{"text":"\\uF822\\uE$(icon)\\uF824","extra":[{"text":"$(text)（$(Min):$(10Sec)$(Sec)）","color":"$(color)"}],"italic":false,"color":"white"}'