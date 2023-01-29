# Countの増減
    execute store result score $Count Temporary run data get entity @s data.buy.Count
    execute unless score $Count Temporary matches 1 run scoreboard players operation $Count Temporary += $AddCount Temporary
    execute if score $Count Temporary matches 1 run scoreboard players operation $Count Temporary = $AddCount Temporary
    execute if score $Count Temporary matches 1 run scoreboard players set $Count Temporary 2
# Countを1~64に調整後Countを代入
    execute if score $Count Temporary matches ..0 run scoreboard players set $Count Temporary 1
    execute if score $Count Temporary matches 65.. run scoreboard players set $Count Temporary 64
    execute store result entity @s data.buy.Count byte 1 run scoreboard players get $Count Temporary