#> ui:smithing/combine/item/bonus_status/extra/merge
# ExBonus内の重複した補正ステータスを1つに統合

$execute store result score $Amplifier Temporary run data get storage ui: ItemData.ExBonus[{status:$(status)}].Value
execute store result score $ExAmplifier Temporary run data get storage ui: ItemData.Queue[0].Value
scoreboard players operation $Amplifier Temporary += $ExAmplifier Temporary
$execute store result storage ui: ItemData.ExBonus[{status:$(status)}].Value int 1 run scoreboard players get $Amplifier Temporary
scoreboard players reset $ExAmplifier Temporary