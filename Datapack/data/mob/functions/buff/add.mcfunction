#> mob:buff/add
# バフの追加

$scoreboard players set $Amplifier Temporary $(Amplifier)
$scoreboard players operation @s Buff$(Status) += $Amplifier Temporary
scoreboard players reset $Amplifier Temporary
tag @s add StatusUpdate