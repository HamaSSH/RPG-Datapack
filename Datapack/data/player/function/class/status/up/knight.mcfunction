#> player:class/status/up/knight
# レベルアップごとのステータスアップ処理

scoreboard players set $AddHP Temporary 7
scoreboard players operation $AddHP Temporary += $LVL/10 Temporary
scoreboard players operation @s BaseHP += $AddHP Temporary
scoreboard players reset $AddHP Temporary
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseMP 8
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseSTR 6
execute if score %4 Temporary matches 0 run scoreboard players add @s BaseINT 4
execute if score %4 Temporary matches 0 run scoreboard players add @s BaseDEF 6
execute if score %5 Temporary matches 0 run scoreboard players add @s BaseAGI 5