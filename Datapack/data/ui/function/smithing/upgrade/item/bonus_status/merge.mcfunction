#> ui:smithing/upgrade/item/bonus_status/merge
# new_base_bonusとcombine_bonusの補正ステータスを1つに統合

$execute store result score $NewValue Temporary run data get storage ui: ItemData.new_bonus[{status:"$(status)"}].value
$scoreboard players add $NewValue Temporary $(value)
$execute store result storage ui: ItemData.new_bonus[{status:"$(status)"}].value int 1 run scoreboard players get $NewValue Temporary
scoreboard players reset $NewValue Temporary