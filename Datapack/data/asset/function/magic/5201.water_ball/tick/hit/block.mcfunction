#> asset:magic/5201.water_ball/tick/hit/block
# ブロックにぶつかった場合

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=mule,tag=CookingMule,dx=0] at @s run function ui:cooking/lit/false
function asset:magic/5201.water_ball/tick/hit/aoe
tag @s add Kill