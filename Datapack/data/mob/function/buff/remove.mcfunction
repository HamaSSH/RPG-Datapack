#> mob:buff/remove
# バフの削除

$scoreboard players set $Amplifier Temporary $(amplifier)
$scoreboard players operation @s $(status) -= $Amplifier Temporary
scoreboard players reset $Amplifier Temporary
tag @s add StatusUpdate