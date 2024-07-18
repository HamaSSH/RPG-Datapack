#> player:class/wizard/status/up
# レベルアップごとのステータスアップ処理

scoreboard players add @s BaseHP 2
scoreboard players operation @s BaseHP += $LVL/10 Temporary
scoreboard players add @s BaseMP 2

execute if score %2 Temporary matches 0 run scoreboard players add @s BaseMP 3
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseINT 1
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseLUK 2
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseHP 1
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseAGI 2

execute if score %3 Temporary matches 0 run scoreboard players add @s BaseMP 3
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseINT 1
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseLUK 1

execute if score %5 Temporary matches 0 run scoreboard players add @s BaseHP 1
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseINT 1
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAGI 3

execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 15
execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 40
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseLUK 4