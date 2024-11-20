#> asset:material/sweet_berries/collect/_
# 採集処理

execute if block ~ ~ ~ air run function asset:material/sweet_berries/collect/block
execute if score @s UsingShears matches 12.. run function asset:material/sweet_berries/collect/shear