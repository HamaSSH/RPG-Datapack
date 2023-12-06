#> asset:material/harvesting/grass/harvest
# 植物を破壊した時の処理

scoreboard players add @s UsingShears 1
execute if score @s UsingShears matches 3.. run function asset:material/harvesting/destroy