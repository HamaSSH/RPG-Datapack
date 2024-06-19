#> ui:smithing/upgrade/item/bonus_status/extra
# 合成アイテムによる補正ステータスがあれば加算

$execute store result score $CombineAmplifier Temporary run data get storage ui: ItemData.combine_bonus[{status:$(status)}].value
scoreboard players operation $Amplifier Temporary += $CombineAmplifier Temporary
$data remove storage ui: ItemData.combine_bonus[{status:$(status)}]
scoreboard players reset $CombineAmplifier Temporary