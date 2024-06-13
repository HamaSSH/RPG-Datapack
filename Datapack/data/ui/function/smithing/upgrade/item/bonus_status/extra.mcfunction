#> ui:smithing/upgrade/item/bonus_status/extra
# 合成アイテムによる補正ステータスがあれば加算

$execute store result score $ExAmplifier Temporary run data get storage ui: ItemData.ExBonus[{status:$(status)}].Value
scoreboard players operation $Amplifier Temporary += $ExAmplifier Temporary
$data remove storage ui: ItemData.ExBonus[{status:$(status)}]
scoreboard players reset $ExAmplifier Temporary