#> asset:material/harvesting/grass/harvest/id
# 指定されたブロックと一致すれば破壊

execute if block ~ ~ ~ #asset:grass if score @s UsingShears matches 3.. run function asset:material/harvesting/grass/harvest/_