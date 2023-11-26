#> player:combat/main/bow/quiver/11
# スロット11の矢筒→弓矢

tag @s add QuiverEquipped
data modify storage lib: NewInventory[{Slot:11b}].id set value "minecraft:arrow"
execute store result storage lib: NewInventory[{Slot:11b}].tag.UUID int 1 run scoreboard players add World ItemUUID 1