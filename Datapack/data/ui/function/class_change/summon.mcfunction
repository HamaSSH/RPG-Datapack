#> ui:class_change/summon
# 店UIの召喚

tag @s add LookingAtUI

# プレイヤーに結びついたUIの召喚
    summon interaction ~ ~1.1 ~ {width:1f,attack:{player:[I;2106,5308417,0,0],timestamp:0},Tags:["UIInit","Timer","AutoKill","UIInteraction"],Passengers:[{id:"chest_minecart",CustomDisplayTile:1b,DisplayState:{Name:"air"},Tags:["HasVehicle","AutoKill","ClassUI"],Passengers:[{id:"marker",Tags:["HasVehicle","AutoKill","ClassMarker"]}]}]}
    execute positioned ~ ~1.1 ~ as @e[type=interaction,tag=UIInit,distance=..0.01] positioned ~ ~-1.1 ~ run function ui:class_change/init

# リセット
    advancement revoke @s only ui:looking_at/class_change