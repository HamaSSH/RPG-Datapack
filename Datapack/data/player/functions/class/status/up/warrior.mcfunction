#> player:class/status/up/warrior
# レベルアップごとのステータスアップ処理

scoreboard players set $AddHP Temporary 9
scoreboard players operation $AddHP Temporary += $LVL/10 Temporary
scoreboard players operation @s BaseHP += $AddHP Temporary
scoreboard players reset $AddHP Temporary
execute if score %3 Temporary matches 0 run scoreboard players add @s BaseMP 4
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseSTR 8
execute if score %4 Temporary matches 0 run scoreboard players add @s BaseDEF 6