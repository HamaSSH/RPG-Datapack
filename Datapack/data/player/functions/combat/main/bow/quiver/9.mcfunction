#> player:combat/main/bow/quiver/9
# スロット9の矢筒→弓矢

tag @s add Quiver
data modify storage lib: NewInventory[{Slot:9b}].id set value "minecraft:arrow"
execute store result storage lib: NewInventory[{Slot:9b}].tag.UUID int 1 run scoreboard players add World ItemUUID 1