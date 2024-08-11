#> asset:magic/5302.flash/tick/_
# 魔法のtick時の処理

scoreboard players add @s Timer 1
execute if predicate lib:percentage/10 run particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.9],scale:1.5} ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if predicate lib:percentage/10 run particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.9],scale:1.5} ^ ^ ^0.5 0.1 0.1 0.1 0 1 force
execute if predicate lib:percentage/10 run particle dust_color_transition{from_color:[0.918,1.0,0.639],to_color:[0.914,1.0,0.9],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute if predicate lib:percentage/10 run particle dust_color_transition{from_color:[0.918,1.0,0.639],to_color:[0.914,1.0,0.9],scale:1} ^ ^ ^0.5 0.2 0.2 0.2 0 1 force
execute if predicate lib:percentage/10 run particle wax_off ~ ~ ~ 0.2 0.2 0.2 0 1 force

# タイマー駆動
    execute if score @s Timer matches 10 run function asset:magic/5302.flash/tick/electro/explode
    execute if score @s Timer matches 11 as @e[type=#lib:every_mob,tag=Enemy,tag=5302.HurtTime,distance=..6] run tag @s remove 5302.HurtTime
    execute if score @s Timer matches 14 run function asset:magic/5302.flash/tick/electro/explode
    execute if score @s Timer matches 15 as @e[type=#lib:every_mob,tag=Enemy,tag=5302.HurtTime,distance=..6] run tag @s remove 5302.HurtTime
    execute if score @s Timer matches 18 run function asset:magic/5302.flash/tick/electro/explode
    execute if score @s Timer matches 19 as @e[type=#lib:every_mob,tag=Enemy,tag=5302.HurtTime,distance=..6] run tag @s remove 5302.HurtTime
    execute if score @s Timer matches 19 run kill @s