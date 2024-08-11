#> asset:magic/5503.wind_burst/tick/_
# 魔法のtick時の処理

scoreboard players add @s Timer 1
particle dust_color_transition{from_color:[0.478,0.784,0.275],to_color:[0.91,1.0,0.88],scale:2} ~ ~ ~ 0.2 0.2 0.2 0 3 force
particle dust_color_transition{from_color:[0.725,1.0,0.506],to_color:[0.91,1.0,0.88],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 6 force
execute if predicate lib:percentage/40 run particle gust ~ ~ ~ 0.3 0.3 0.3 0.3 1

# タイマー駆動
    execute if score @s Timer matches 1..4 run function asset:magic/5503.wind_burst/tick/bullet/move {forward:0.2}
    execute if score @s Timer matches 5..8 run function asset:magic/5503.wind_burst/tick/bullet/move {forward:0.15}
    execute if score @s Timer matches 9..18 run function asset:magic/5503.wind_burst/tick/bullet/move {forward:0.1}
    execute if score @s Timer matches 19..40 run function asset:magic/5503.wind_burst/tick/bullet/move {forward:0.05}
    execute if score @s Timer matches 40 run function asset:magic/5503.wind_burst/tick/bullet/explode

# 引き込み
    scoreboard players operation $5503.Timer Temporary = @s Timer
    scoreboard players operation $5503.Timer Temporary %= #5 Constant
    execute if score $5503.Timer Temporary matches 0 run function asset:magic/5503.wind_burst/tick/bullet/pull
    scoreboard players reset $5503.Timer Temporary