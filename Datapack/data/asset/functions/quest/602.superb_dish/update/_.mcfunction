#> asset:quest/602.superb_dish/update/_
# 本の進捗更新

data remove storage quest: LineSpace
data modify storage quest: LineSpace set value ['"\\uF827"','"\\uF827"','"\\uF827"']
execute if score @s 602.Gapple matches 10.. run data modify storage quest: LineSpace[0] set value '""'
execute if score @s 602.Meat matches 10.. run data modify storage quest: LineSpace[1] set value '""'
execute if score @s 602.Leaf matches 10.. run data modify storage quest: LineSpace[2] set value '""'
loot give @s loot asset:quest/602.superb_dish/book