#> asset:magic/5104.cursed_aura/player/_
# 魔法を発動した後のプレイヤーのtick処理

scoreboard players add @s 5104.Tick 1
particle soul_fire_flame ~ ~0.3 ~ 0.2 0.4 0.2 0.03 2 force
particle dust_color_transition{from_color:[0.363,0.945,1.0],to_color:[1,1,1],scale:1} ~ ~0.3 ~ 0.2 0.4 0.2 0 5 force
execute if score @s 5104.Tick matches 200 run scoreboard players reset @s 5104.Tick