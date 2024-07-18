#> player:status/before_levelup
# レベルアップ前のステータス情報を保存

tag @s add BeforeLevelup
scoreboard players operation $PreviousLVL Temporary = @s LVL
scoreboard players operation $PreviousHP Temporary = @s BaseHP
scoreboard players operation $PreviousHPR Temporary = @s BaseHPR
scoreboard players operation $PreviousMP Temporary = @s BaseMP
scoreboard players operation $PreviousMPR Temporary = @s BaseMPR
scoreboard players operation $PreviousSTR Temporary = @s BaseSTR
scoreboard players operation $PreviousINT Temporary = @s BaseINT
scoreboard players operation $PreviousDEX Temporary = @s BaseDEX
scoreboard players operation $PreviousDEF Temporary = @s BaseDEF
scoreboard players operation $PreviousAGI Temporary = @s BaseAGI
scoreboard players operation $PreviousCRT Temporary = @s BaseCRT
scoreboard players operation $PreviousLUK Temporary = @s BaseLUK

# 自然回復表示用のスコア
    scoreboard players operation $PrevHPRInt Temporary = @s BaseHPR
    scoreboard players operation $PrevHPRInt Temporary /= #100 Constant
    scoreboard players operation $PrevHPRDec Temporary = @s BaseHPR
    scoreboard players operation $PrevHPRDec Temporary %= #100 Constant
    scoreboard players operation $PrevMPRInt Temporary = @s BaseMPR
    scoreboard players operation $PrevMPRInt Temporary /= #100 Constant
    scoreboard players operation $PrevMPRDec Temporary = @s BaseMPR
    scoreboard players operation $PrevMPRDec Temporary %= #100 Constant
    execute if score $PrevHPRInt Temporary matches 1.. if score $PrevHPRDec Temporary matches 1..9 run scoreboard players set $PrevHPRDec10 Temporary 0
    execute if score $PrevMPRInt Temporary matches 1.. if score $PrevMPRDec Temporary matches 1..9 run scoreboard players set $PrevMPRDec10 Temporary 0