#> asset:magic/5204.heal_rain/tick/_
# 魔法のtick時の処理

scoreboard players add @s Timer 1

# 回転
    execute store result score $RotationX Temporary run data get entity @s Rotation[0]
    execute store result entity @s Rotation[0] float 1 run scoreboard players add $RotationX Temporary 3
    scoreboard players reset $RotationX Temporary

# 演出
    particle falling_water ~ ~4 ~ 2 5 2 0 5 force
    execute if predicate lib:percentage/50 run particle splash ~ ~ ~ 2 0 2 0 3 force
    execute positioned ^3.5 ^ ^3.5 run particle dust_color_transition{from_color:[0.231,0.384,0.894],to_color:[0.518,0.71,1.0],scale:1} ~ ~ ~ 0.1 0.3 0.1 0 20 force
    execute positioned ^-3.5 ^ ^3.5 run particle dust_color_transition{from_color:[0.231,0.384,0.894],to_color:[0.518,0.71,1.0],scale:1} ~ ~ ~ 0.1 0.3 0.1 0 20 force
    execute positioned ^3.5 ^ ^-3.5 run particle dust_color_transition{from_color:[0.231,0.384,0.894],to_color:[0.518,0.71,1.0],scale:1} ~ ~ ~ 0.1 0.3 0.1 0 20 force
    execute positioned ^-3.5 ^ ^-3.5 run particle dust_color_transition{from_color:[0.231,0.384,0.894],to_color:[0.518,0.71,1.0],scale:1} ~ ~ ~ 0.1 0.3 0.1 0 20 force
    execute positioned ^ ^ ^5 run particle dust_color_transition{from_color:[0.518,0.71,1.0],to_color:[0.231,0.384,0.894],scale:1} ~ ~ ~ 0.1 0.3 0.1 0 20 force
    execute positioned ^ ^ ^-5 run particle dust_color_transition{from_color:[0.518,0.71,1.0],to_color:[0.231,0.384,0.894],scale:1} ~ ~ ~ 0.1 0.3 0.1 0 20 force
    execute positioned ^5 ^ ^ run particle dust_color_transition{from_color:[0.518,0.71,1.0],to_color:[0.231,0.384,0.894],scale:1} ~ ~ ~ 0.1 0.3 0.1 0 20 force
    execute positioned ^-5 ^ ^ run particle dust_color_transition{from_color:[0.518,0.71,1.0],to_color:[0.231,0.384,0.894],scale:1} ~ ~ ~ 0.1 0.3 0.1 0 20 force

# 20tick × 5回の回復
    execute if score @s Timer matches 20 run function asset:magic/5204.heal_rain/tick/heal/main
    execute if score @s Timer matches 21 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 22 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 35 run function asset:magic/5204.heal_rain/tick/heal/main
    execute if score @s Timer matches 36 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 37 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 50 run function asset:magic/5204.heal_rain/tick/heal/main
    execute if score @s Timer matches 51 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 52 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 65 run function asset:magic/5204.heal_rain/tick/heal/main
    execute if score @s Timer matches 66 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 67 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 80 run function asset:magic/5204.heal_rain/tick/heal/main
    execute if score @s Timer matches 81 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 82 run function asset:magic/5204.heal_rain/tick/heal/sub
    execute if score @s Timer matches 110 run function asset:magic/5204.heal_rain/tick/end
    execute if score @s Timer matches 120.. run kill @s