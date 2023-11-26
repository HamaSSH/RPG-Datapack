#> player:combat/main/bow/quiver/to_arrow/10
# スロット10の矢筒→弓矢

tag @s add QuiverEquipped
# 矢筒の中の弓矢を減らす
    execute if entity @s[tag=UsedQuiver] store result score $Capacity Temporary run data get storage player: Accessories[{Slot:10b}].tag.Quiver.Capacity
    execute if entity @s[tag=UsedQuiver] store result score $Arrow Temporary run data get storage player: Accessories[{Slot:10b}].tag.Quiver.Arrow
    execute if entity @s[tag=UsedQuiver] store result storage lib: NewInventory[{Slot:10b}].tag.Quiver.Arrow int 1 run scoreboard players remove $Arrow Temporary 1
    execute if entity @s[tag=UsedQuiver] if score $Arrow Temporary matches ..0 run data remove storage lib: NewInventory[{Slot:10b}].tag.Quiver.Arrow
    execute if entity @s[tag=UsedQuiver] if score $Arrow Temporary matches ..0 run tag @s remove QuiverEquipped
    execute if entity @s[tag=UsedQuiver] if score $Arrow Temporary matches ..0 run tag @s remove UsedQuiver

# 矢筒の中に弓矢があればにんじん棒→弓矢
    execute if entity @s[tag=QuiverEquipped] run data modify storage lib: NewInventory[{Slot:10b}].id set value "minecraft:arrow"
    execute if entity @s[tag=QuiverEquipped] run execute store result storage lib: NewInventory[{Slot:10b}].tag.UUID int 1 run scoreboard players add World ItemUUID 1

# リセット
    scoreboard players reset $Capacity Temporary
    scoreboard players reset $Arrow Temporary