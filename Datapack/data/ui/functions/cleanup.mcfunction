#> ui:cleanup
# UIの後処理

# UIに残されたアイテムを返却
    execute on passengers on passengers run data modify storage ui: ReturnItems set from entity @s data.Items
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{tag:{UI:{ItemType:"Blank"}}}]
    execute on passengers on passengers if data storage ui: ReturnItems[] run function ui:return_item/_

# UI用エンティティのkill
    execute if score @s PlayerID = @p PlayerID run tag @s add AutoKill