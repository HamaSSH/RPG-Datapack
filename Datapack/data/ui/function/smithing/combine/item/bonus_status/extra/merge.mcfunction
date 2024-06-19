#> ui:smithing/combine/item/bonus_status/extra/merge
# combine_bonus内の重複した補正ステータスを1つに統合

$execute store result score $Amplifier Temporary run data get storage ui: ItemData.combine_bonus[{status:$(status)}].value
execute store result score $CombineAmplifier Temporary run data get storage ui: ItemData.Queue[0].value
scoreboard players operation $Amplifier Temporary += $CombineAmplifier Temporary
$execute store result storage ui: ItemData.combine_bonus[{status:$(status)}].value int 1 run scoreboard players get $Amplifier Temporary
scoreboard players reset $CombineAmplifier Temporary