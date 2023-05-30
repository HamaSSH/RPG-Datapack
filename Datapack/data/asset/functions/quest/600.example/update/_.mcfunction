#> asset:quest/600.example/update/_
# 本の進捗更新

data remove storage quest: LineSpace
data modify storage quest: LineSpace set value ['"\\uF827"','"\\uF827"','"\\uF827"']
execute if score @s 600.Zombie matches 10.. run data modify storage quest: LineSpace[0] set value '""'
execute if score @s 600.GreatZombie matches 10.. run data modify storage quest: LineSpace[1] set value '""'
execute if score @s 600.ArmorZombie matches 10.. run data modify storage quest: LineSpace[2] set value '""'
loot give @s loot asset:quest/600.example/_