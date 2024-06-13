#> item:material/collect/destroy
# 植物の採取(destroy)

setblock ~ ~ ~ air destroy
function item:tool/durability/_
scoreboard players reset @s UsingShears