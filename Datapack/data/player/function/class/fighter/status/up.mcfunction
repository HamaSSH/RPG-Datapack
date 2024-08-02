#> player:class/fighter/status/up
# レベルアップごとのステータスアップ処理

scoreboard players add @s BaseHP 4
scoreboard players operation @s BaseHP += $LVL/10 Temporary
scoreboard players add @s BaseMP 1

execute if score %2 Temporary matches 0 run scoreboard players add @s BaseHP 1
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseSTR 1
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseCRT 3
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseMP 1
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseDEF 4

execute if score %3 Temporary matches 0 run scoreboard players add @s BaseHP 2
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseSTR 2
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseCRT 1
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseDEF 3

execute if score %5 Temporary matches 0 run scoreboard players add @s BaseMP 1
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseCRT 2
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseDEF 2

execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 25
execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 15

execute if score @s LVL matches 20..49 run scoreboard players set @s FighterRank 1
execute if score @s LVL matches 20..49 run team join Fighter1
execute if score @s LVL matches 50.. run scoreboard players set @s FighterRank 2
execute if score @s LVL matches 50.. run team join Fighter2