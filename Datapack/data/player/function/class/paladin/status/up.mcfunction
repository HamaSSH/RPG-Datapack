#> player:class/paladin/status/up
# レベルアップごとのステータスアップ処理

scoreboard players add @s BaseHP 3
scoreboard players operation @s BaseHP += $LVL/10 Temporary
scoreboard players add @s BaseMP 1

execute if score %2 Temporary matches 0 run scoreboard players add @s BaseSTR 1
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseMP 2
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseDEF 3
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseHP 1
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseAGI 2

execute if score %3 Temporary matches 0 run scoreboard players add @s BaseSTR 1
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseINT 1
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseHP 1
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseDEF 3

execute if score %5 Temporary matches 0 run scoreboard players add @s BaseMP 2
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseINT 1
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAGI 2

execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 20
execute if score %10 Temporary matches 5 run scoreboard players add @s BaseDEF 4
execute if score %10 Temporary matches 5 run scoreboard players add @s BaseAGI 3
execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 25
execute if score %10 Temporary matches 0 run scoreboard players add @s BaseINT 1
