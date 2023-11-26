#> player:combat/main/bow/quiver/11
# スロット11の矢筒→弓矢

tag @s add HasArrow
# 矢筒の中の弓矢を減らす
    execute if entity @s[tag=UsedQuiver] store result score $Capacity Temporary run data get storage player: Accessories[{Slot:11b}].tag.Quiver.Capacity
    execute if entity @s[tag=UsedQuiver] store result score $Arrow Temporary run data get storage player: Accessories[{Slot:11b}].tag.Quiver.Arrow
    execute if entity @s[tag=UsedQuiver] store result storage lib: NewInventory[{Slot:11b}].tag.Quiver.Arrow int 1 run scoreboard players remove $Arrow Temporary 1
    execute if entity @s[tag=UsedQuiver] if score $Arrow Temporary matches ..0 run data remove storage lib: NewInventory[{Slot:11b}].tag.Quiver.Arrow
    execute if entity @s[tag=UsedQuiver] if score $Arrow Temporary matches ..0 run tag @s remove HasArrow
    execute if entity @s[tag=UsedQuiver] if score $Arrow Temporary matches ..0 run tag @s remove UsedQuiver

# 矢筒の中に弓矢があればにんじん棒→弓矢
    execute if entity @s[tag=HasArrow] run tag @s add QuiverEquipped
    execute if entity @s[tag=HasArrow] run data modify storage lib: NewInventory[{Slot:11b}].id set value "minecraft:arrow"
    execute if entity @s[tag=HasArrow] run execute store result storage lib: NewInventory[{Slot:11b}].tag.UUID int 1 run scoreboard players add World ItemUUID 1