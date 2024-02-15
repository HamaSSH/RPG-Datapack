#> player:status/before_levelup
# レベルアップ前のステータス情報を保存

tag @s add BeforeLevelup
scoreboard players operation $PreviousLVL Temporary = @s LVL
scoreboard players operation $PreviousHP Temporary = @s BaseHP
scoreboard players operation $PreviousMP Temporary = @s BaseMP
scoreboard players operation $PreviousSTR Temporary = @s BaseSTR
scoreboard players operation $PreviousINT Temporary = @s BaseINT
scoreboard players operation $PreviousDEX Temporary = @s BaseDEX
scoreboard players operation $PreviousDEF Temporary = @s BaseDEF
scoreboard players operation $PreviousAGI Temporary = @s BaseAGI
scoreboard players operation $PreviousCRT Temporary = @s BaseCRT
scoreboard players operation $PreviousLUK Temporary = @s BaseLUK