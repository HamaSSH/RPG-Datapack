#> item:material/collect/others
# その他植物の採取

execute if block ~ ~ ~ #item:collect/grass if score @s UsingShears matches 3.. run function item:material/collect/destroy
execute if block ~ ~ ~ #item:collect/flower if score @s UsingShears matches 8.. run function item:material/collect/destroy