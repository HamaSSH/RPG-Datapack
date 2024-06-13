#> player:status/get
# ステータス情報を取得

scoreboard players operation $CurrentHP Temporary = @s BaseHP
scoreboard players operation $CurrentMP Temporary = @s BaseMP
scoreboard players operation $CurrentSTR Temporary = @s BaseSTR
scoreboard players operation $CurrentINT Temporary = @s BaseINT
scoreboard players operation $CurrentDEX Temporary = @s BaseDEX
scoreboard players operation $CurrentDEF Temporary = @s BaseDEF
scoreboard players operation $CurrentAGI Temporary = @s BaseAGI
scoreboard players operation $CurrentCRT Temporary = @s BaseCRT
scoreboard players operation $CurrentLUK Temporary = @s BaseLUK