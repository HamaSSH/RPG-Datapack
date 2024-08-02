#> player:class/hunter/status/up
# レベルアップごとのステータスアップ処理

scoreboard players add @s BaseHP 3
scoreboard players operation @s BaseHP += $LVL/10 Temporary
scoreboard players add @s BaseMP 2

execute if score %2 Temporary matches 0 run scoreboard players add @s BaseMP 1
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseDEX 1
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseAGI 2
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseHP 1
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseSTR 1
execute if score %2 Temporary matches 1 run scoreboard players add @s BaseCRT 1

execute if score %3 Temporary matches 0 run scoreboard players add @s BaseMP 1
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseDEX 1
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseAGI 2
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseCRT 3
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseLUK 2

execute if score %5 Temporary matches 0 run scoreboard players add @s BaseMP 1
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseSTR 1
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAGI 3
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseCRT 2
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseLUK 3

execute if score %10 Temporary matches 5 run scoreboard players add @s BaseHPR 15
execute if score %10 Temporary matches 5 run scoreboard players add @s BaseAGI 6
execute if score %10 Temporary matches 0 run scoreboard players add @s BaseMPR 20
execute if score %10 Temporary matches 0 run scoreboard players add @s BaseDEX 2
execute if score %10 Temporary matches 0 run scoreboard players add @s BaseCRT 8

execute if score @s LVL matches 20..49 run scoreboard players set @s HunterRank 1
execute if score @s LVL matches 20..49 run team join Hunter1
execute if score @s LVL matches 50.. run scoreboard players set @s HunterRank 2
execute if score @s LVL matches 50.. run team join Hunter2