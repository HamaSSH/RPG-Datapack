#> ui:smithing/combine/item/bonus_status/extra/merge_combine
# combine_bonus内の重複した補正ステータスを1つに統合

$execute store result score $Amplifier Temporary run data get storage ui: ItemData.combine_bonus[{status:"$(status)"}].value
$scoreboard players add $Amplifier Temporary $(value)
$execute store result storage ui: ItemData.combine_bonus[{status:"$(status)"}].value int 1 run scoreboard players get $Amplifier Temporary
scoreboard players reset $Amplifier Temporary