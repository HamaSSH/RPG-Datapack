#> asset:quest/602.superb_dish/give
# クエスト本を与える

data remove storage quest: LineSpace
data modify storage quest: LineSpace set value ['""','""','""']
scoreboard players set @s 602.Gapple 0
scoreboard players set @s 602.Meat 0
scoreboard players set @s 602.Leaf 0
loot give @s loot asset:quest/602.superb_dish/book