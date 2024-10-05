#> ui:cooking/summon
# 料理UIの召喚

tag @s add LookingAtUI

# プレイヤーに結びついたUIの召喚
    summon interaction ~ ~1.1 ~ {width:1f,height:0.7f,attack:{player:[I;2106,5308417,0,0],timestamp:0},Tags:["UIInit","Timer","AutoKill","UIInteraction"],Passengers:[{id:"chest_minecart",CustomDisplayTile:1b,DisplayState:{Name:"air"},Tags:["HasVehicle","AutoKill","CookingUI"],Passengers:[{id:"minecraft:marker",Tags:["HasVehicle","AutoKill","CookingMarker"]}]}]}
    execute positioned ~ ~1.1 ~ as @e[type=interaction,tag=UIInit,distance=..0.01] positioned ~ ~-1.1 ~ run function ui:cooking/init

# リセット
    advancement revoke @s only ui:looking_at/cooking