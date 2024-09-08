#> asset:magic/5402.rock_spike/tick/_
# 魔法のtick時の処理


# タイマー駆動
    scoreboard players add @s Timer 1
    execute if score @s Timer matches 15 run function asset:magic/5402.rock_spike/tick/spike/thrust
    execute if score @s Timer matches 30 run function asset:magic/5402.rock_spike/tick/spike/thrust
    execute if score @s Timer matches 45 run function asset:magic/5402.rock_spike/tick/spike/thrust

# 回転
    execute store result score $RotationX Temporary run data get entity @s Rotation[0]
    execute store result entity @s Rotation[0] float 1 run scoreboard players add $RotationX Temporary 1
    scoreboard players reset $RotationX Temporary

# スパイクの範囲の演出
    particle enchant ~ ~ ~ 1.7 0 1.7 0.2 10 force
    particle block{block_state:"dirt"} ~ ~ ~ 1.7 0 1.7 0.5 20 force
    particle dust{color:[0.592,0.392,0.227],scale:1.5} ~ ~ ~ 1.7 0 1.7 0 10 force
    particle dust{color:[0.792,0.549,0.353],scale:1} ~ ~ ~ 1.7 0 1.7 0 10 force
    execute positioned ^2.1 ^ ^2.1 run particle dust{color:[0.592,0.392,0.227],scale:0.75} ~ ~ ~ 0.1 0.2 0.1 0 10 force
    execute positioned ^-2.1 ^ ^2.1 run particle dust{color:[0.592,0.392,0.227],scale:0.75} ~ ~ ~ 0.1 0.2 0.1 0 10 force
    execute positioned ^2.1 ^ ^-2.1 run particle dust{color:[0.592,0.392,0.227],scale:0.75} ~ ~ ~ 0.1 0.2 0.1 0 10 force
    execute positioned ^-2.1 ^ ^-2.1 run particle dust{color:[0.592,0.392,0.227],scale:0.75} ~ ~ ~ 0.1 0.2 0.1 0 10 force
    execute positioned ^ ^ ^3 run particle dust{color:[0.592,0.392,0.227],scale:0.75} ~ ~ ~ 0.1 0.2 0.1 0 10 force
    execute positioned ^ ^ ^-3 run particle dust{color:[0.592,0.392,0.227],scale:0.75} ~ ~ ~ 0.1 0.2 0.1 0 10 force
    execute positioned ^3 ^ ^ run particle dust{color:[0.592,0.392,0.227],scale:0.75} ~ ~ ~ 0.1 0.2 0.1 0 10 force
    execute positioned ^-3 ^ ^ run particle dust{color:[0.592,0.392,0.227],scale:0.75} ~ ~ ~ 0.1 0.2 0.1 0 10 force

# 時間経過でkill
    execute if score @s Timer matches 50.. run kill @s