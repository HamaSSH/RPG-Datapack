#> mob:buff/add
# バフの追加

$scoreboard players set $Amplifier Temporary $(amplifier)
$scoreboard players operation @s $(status) += $Amplifier Temporary
scoreboard players reset $Amplifier Temporary
tag @s add StatusUpdate