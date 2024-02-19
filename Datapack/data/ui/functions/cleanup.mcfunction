#> ui:cleanup
# UIの後処理

# UIに残されたアイテムを返却
    execute on passengers on passengers run data modify storage ui: ReturnItems set from entity @s data.Items
    execute on passengers on passengers if score @s UIPage matches 2 run data remove storage ui: ReturnItems[{tag:{UI:{Combinable:1b}}}]
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{tag:{UI:{ItemType:"Blank"}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] on passengers on passengers run function ui:return_item/_

# UI用エンティティのkill
    execute if score @s PlayerID = @p PlayerID run tag @s add AutoKill