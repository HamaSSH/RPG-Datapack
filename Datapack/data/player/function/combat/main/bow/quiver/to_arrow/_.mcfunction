#> player:combat/main/bow/quiver/to_arrow/_
# 残り弓矢に応じて矢筒を弓矢の姿に変える

execute if data storage lib: NewInventory[{Slot:9b}].components.minecraft:custom_data.quiver.arrow run function player:combat/main/bow/quiver/to_arrow/9
execute if data storage lib: NewInventory[{Slot:10b}].components.minecraft:custom_data.quiver.arrow if entity @s[tag=!QuiverEquipped] run function player:combat/main/bow/quiver/to_arrow/10
execute if data storage lib: NewInventory[{Slot:11b}].components.minecraft:custom_data.quiver.arrow if entity @s[tag=!QuiverEquipped] run function player:combat/main/bow/quiver/to_arrow/11
tag @s remove UsedQuiver