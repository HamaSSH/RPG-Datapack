#> asset:quest/600.example/give
# クエスト本を与える

data remove storage quest: LineSpace
data modify storage quest: LineSpace set value ['""','""','""']
scoreboard players set @s 600.Zombie 0
scoreboard players set @s 600.GreatZombie 0
scoreboard players set @s 600.ArmorZombie 0
loot give @s loot asset:quest/600.example/_