#> player:buff/reset
# 全バフのリセット

scoreboard players reset @s BuffHP
scoreboard players reset @s BuffMP
scoreboard players reset @s BuffHPR
scoreboard players reset @s BuffMPR
scoreboard players reset @s BuffSTR
scoreboard players reset @s BuffINT
scoreboard players reset @s BuffDEX
scoreboard players reset @s BuffDEF
scoreboard players reset @s BuffAGI
scoreboard players reset @s BuffCRT
scoreboard players reset @s BuffLUK
tag @s remove IsBuffed
effect clear @s