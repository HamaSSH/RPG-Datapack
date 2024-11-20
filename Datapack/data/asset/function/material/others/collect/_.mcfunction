#> asset:material/others/collect/_
# その他植物の採取

execute if block ~ ~ ~ #item:collect/grass if score @s UsingShears matches 3.. run function asset:material/others/collect/block
execute if block ~ ~ ~ #item:collect/flower if score @s UsingShears matches 8.. run function asset:material/others/collect/block