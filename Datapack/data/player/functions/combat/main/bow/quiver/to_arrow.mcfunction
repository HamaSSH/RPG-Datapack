#> player:combat/main/bow/quiver/to_arrow
# 矢筒を弓矢の姿に変える

execute if data storage player: Accessories[{Slot:9b}].tag.Quiver.Arrow run function player:combat/main/bow/quiver/9
execute if data storage player: Accessories[{Slot:10b}].tag.Quiver.Arrow if entity @s[tag=!QuiverEquipped] run function player:combat/main/bow/quiver/10
execute if data storage player: Accessories[{Slot:11b}].tag.Quiver.Arrow if entity @s[tag=!QuiverEquipped] run function player:combat/main/bow/quiver/11
tag @s remove HasArrow