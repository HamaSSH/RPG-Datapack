#> asset:quest/601.craft_potion/update/_
# 本の進捗更新

data remove storage quest: LineSpace
data modify storage quest: LineSpace set value ['"\\uF827"','"\\uF827"','"\\uF827"']
execute if score @s 601.Potion matches 10.. run data modify storage quest: LineSpace[0] set value '""'
loot give @s loot asset:quest/601.craft_potion/book