#> asset:material/harvesting/001.sweet_berries/harvest/id
# 指定されたIDと一致すれば破壊

execute if data storage asset:material {ID:1} if score @s UsingShears matches 12.. run function asset:material/harvesting/001.sweet_berries/harvest/_