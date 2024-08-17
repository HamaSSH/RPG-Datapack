#> asset:magic/5101.fire_ball/tick/hit/block
# ブロックにぶつかった場合

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=mule,tag=UnLit,dx=0] at @s run function ui:cooking/lit/true
function asset:magic/5101.fire_ball/tick/hit/aoe
tag @s add Kill