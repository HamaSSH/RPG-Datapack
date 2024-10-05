#> ui:not_looking
# looking_atが達成されない場合kill

execute unless predicate ui:looking_at/cooking as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=CookingMarker] on vehicle on vehicle run kill @s
execute unless predicate ui:looking_at/brewing as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=BrewingMarker] on vehicle on vehicle run kill @s
execute unless predicate ui:looking_at/smithing as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=SmithingMarker] on vehicle on vehicle run kill @s
execute unless predicate ui:looking_at/shop as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=ShopMarker] on vehicle on vehicle run kill @s
execute unless predicate ui:looking_at/class_change as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=ClassMarker] on vehicle on vehicle run kill @s
execute unless predicate ui:looking_at/enchanting as @e[type=interaction,tag=UIInteraction,distance=..0.01] on passengers on passengers if entity @s[tag=EnchantingMarker] on vehicle on vehicle run kill @s