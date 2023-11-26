#> player:buff/add
# バフの追加

$scoreboard players set $Value Temporary $(Value)
$scoreboard players operation @s Buff$(Bonus) += $Value Temporary
scoreboard players reset $Value Temporary
tag @s add StatusUpdate