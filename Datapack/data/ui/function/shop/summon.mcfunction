#> ui:shop/summon
# 店UIの召喚

# 店UIを村人と結び付ける
    execute anchored eyes positioned ^ ^ ^ run function ui:shop/get_npc

# プレイヤーに結びついたUIの召喚
    summon interaction ~ ~1.1 ~ {width:1f,height:0.7f,attack:{player:[I;2106,5308417,0,0],timestamp:0},Tags:["UIInit","HasVehicle","AutoKill","UIInteraction"],Passengers:[{id:"chest_minecart",CustomDisplayTile:1b,DisplayState:{Name:"air"},Tags:["HasVehicle","AutoKill","ShopUI"],Passengers:[{id:"minecraft:marker",Tags:["HasVehicle","AutoKill","ShopMarker"]}]}]}
    execute positioned ~ ~1.1 ~ as @e[type=interaction,tag=UIInit,distance=..0.01,limit=1] run function ui:shop/init

# リセット
    data remove storage ui: shop_data
    advancement revoke @s only ui:looking_at/shop