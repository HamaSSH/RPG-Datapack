#> asset:material/harvesting/001.sweet_berries/harvest/stage/2
# ブロックの表示を変更

setblock ~ ~ ~ dead_fire_coral[waterlogged=false]
execute on passengers run data modify entity @s item.id set value "minecraft:dead_fire_coral"