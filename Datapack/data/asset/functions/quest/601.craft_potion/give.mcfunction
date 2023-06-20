#> asset:quest/601.craft_potion/give
# クエスト本を与える

data remove storage quest: LineSpace
data modify storage quest: LineSpace set value ['""','""','""']
scoreboard players set @s 601.Potion 0
loot give @s loot asset:quest/601.craft_potion/book