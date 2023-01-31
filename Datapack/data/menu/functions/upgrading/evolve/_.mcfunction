##########
#>
#

# 十分な素材を持っているか検知
    data modify storage menu:temp Data.Inventory set from entity @p Inventory
    data modify storage menu:temp Data.clear set from storage menu:temp Data.Items[{Slot:10b}].tag.menu.evolve
    data remove storage menu:temp Data.clear[{id:"minecraft:air"}]
    execute if data storage menu:temp Data.clear[0] run function menu:inventory/clear/_
# 十分に素材があれば↑で生成したNewInvの適用
    execute if score $Required Temporary matches ..0 run function menu:inventory/new/apply
# 強化できなかった
    execute if score $Required Temporary matches 1.. run playsound resource:block.smithing_table.smithing_table2 master @p ~ ~ ~ 1 0.75
# 強化出来た
    scoreboard players set $ButtonClicked Temporary 1
    execute if score $Required Temporary matches ..0 run function menu:upgrading/evolve/give_item
# リセット
    scoreboard players reset $Required