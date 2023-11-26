#> player:combat/main/bow/quiver/store_arrow/_
# それぞれの矢筒に順番に弓矢を格納

execute if data storage player: Accessories[{Slot:9b}].tag.Quiver run function player:combat/main/bow/quiver/store_arrow/9
execute if data storage player: Accessories[{Slot:10b}].tag.Quiver if entity @s[tag=!ArrowStored] run function player:combat/main/bow/quiver/store_arrow/10
execute if data storage player: Accessories[{Slot:11b}].tag.Quiver if entity @s[tag=!ArrowStored] run function player:combat/main/bow/quiver/store_arrow/11

# clearする弓矢の数の確定
    execute store result storage player: Arrow.ClearAmount int 1 run scoreboard players get $ArrowToClear Temporary

# リセット
    tag @s remove ArrowStored
    scoreboard players reset $ArrowToClear Temporary
    scoreboard players reset $Overflow Temporary