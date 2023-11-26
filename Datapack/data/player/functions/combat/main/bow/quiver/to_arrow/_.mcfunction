#> player:combat/main/bow/quiver/to_arrow/_
# 残り弓矢に応じて矢筒を弓矢の姿に変える

execute if data storage player: Accessories[{Slot:9b}].tag.Quiver.Arrow run function player:combat/main/bow/quiver/to_arrow/9
execute if data storage player: Accessories[{Slot:10b}].tag.Quiver.Arrow if entity @s[tag=!QuiverEquipped] run function player:combat/main/bow/quiver/to_arrow/10
execute if data storage player: Accessories[{Slot:11b}].tag.Quiver.Arrow if entity @s[tag=!QuiverEquipped] run function player:combat/main/bow/quiver/to_arrow/11
tag @s remove UsedQuiver