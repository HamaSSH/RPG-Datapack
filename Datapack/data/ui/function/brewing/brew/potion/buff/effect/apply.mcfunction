#> ui:brewing/brew/potion/buff/effect/apply
# エフェクトのLoreの生成

$data modify storage ui: PotionData.EffectLore append value {"text":"\uF823\uE$(icon)\uF822","extra":[{"text":"$(text)\uF82$(level)（$(min):$(10s)$(1s)）","color":"$(color)"}],"italic":false,"color":"white"}