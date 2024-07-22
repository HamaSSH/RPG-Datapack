#> ui:smithing/summon
# 鍛冶UIの召喚

# プレイヤーに結びついたUIの召喚
    summon interaction ~ ~1.1 ~ {width:1f,height:0.7f,attack:{player:[I;2106,5308417,0,0],timestamp:0},Tags:["UIInit","Timer","AutoKill","UIInteraction"],Passengers:[{id:"chest_minecart",CustomDisplayTile:1b,DisplayState:{Name:"air"},Tags:["HasVehicle","AutoKill","SmithingUI"],Passengers:[{id:"minecraft:marker",Tags:["HasVehicle","AutoKill","SmithingMarker"]}]}]}
    execute positioned ~ ~1.1 ~ as @e[type=interaction,tag=UIInit,distance=..0.01] positioned ~ ~-1.1 ~ run function ui:smithing/init

# リセット
    advancement revoke @s only ui:looking_at/smithing