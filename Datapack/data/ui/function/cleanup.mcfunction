#> ui:cleanup
# UIの後処理

# UIに残されたアイテムを返却
    execute on passengers run data modify storage ui: ReturnItems set from entity @s Items
    execute on passengers on passengers if entity @s[tag=SmithingMarker] run data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{combinable:1b}}}}]
    execute on passengers on passengers if entity @s[tag=ShopMarker] run data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"goods"}}}}]
    data remove storage ui: ReturnItems[{id:"minecraft:glass_bottle"}]
    data remove storage ui: ReturnItems[{id:"minecraft:player_head"}]
    data remove storage ui: ReturnItems[{components:{"minecraft:custom_data":{ui:{item_type:"blank"}}}}]
    execute unless data storage ui: ReturnItems[] run data remove storage ui: ReturnItems
    execute if data storage ui: ReturnItems[] on passengers on passengers run function ui:return_item/_

# UI用エンティティのkill
    execute if score @s PlayerID = @p[tag=UsingUI] PlayerID run kill @s