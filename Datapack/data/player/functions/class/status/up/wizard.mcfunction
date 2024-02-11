#> player:class/status/up/wizard
# レベルアップごとのステータスアップ処理

scoreboard players set $AddHP Temporary 5
scoreboard players operation $AddHP Temporary += $LVL/10 Temporary
scoreboard players operation @s BaseHP += $AddHP Temporary
scoreboard players reset $AddHP Temporary
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseMP 9
execute if score %4 Temporary matches 0 run scoreboard players add @s BaseSTR 2
execute if score %2 Temporary matches 0 run scoreboard players add @s BaseINT 6