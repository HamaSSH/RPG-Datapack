#> player:buff/add
# バフの追加

tag @s add IsBuffed
$scoreboard players set $Amplifier Temporary $(amplifier)
$scoreboard players operation @s Buff$(status) += $Amplifier Temporary
scoreboard players reset $Amplifier Temporary
tag @s add StatusUpdate