#> ui:shop/get_npc
# 視点先のNPCを特定

execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=villager,tag=ShopNPC,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run function ui:shop/get_shopdata
execute unless data storage ui: shop_data if entity @s[distance=..4.5] positioned ^ ^ ^0.1 run function ui:shop/get_npc