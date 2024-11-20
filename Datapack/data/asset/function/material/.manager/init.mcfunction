#> asset:material/.manager/init
# ArmorItems[3]のデータをスコアに初期化

execute store result score @s HP run data get entity @s ArmorItems[3].components.minecraft:custom_data.HP
execute store result score @s HPMax run data get entity @s ArmorItems[3].components.minecraft:custom_data.HPMax
tag @s add HasHPScore