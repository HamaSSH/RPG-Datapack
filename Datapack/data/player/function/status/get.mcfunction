#> player:status/get
# ステータス情報を取得

scoreboard players operation $CurrentHP Temporary = @s BaseHP
scoreboard players operation $CurrentHPR Temporary = @s BaseHPR
scoreboard players operation $CurrentMP Temporary = @s BaseMP
scoreboard players operation $CurrentMPR Temporary = @s BaseMPR
scoreboard players operation $CurrentSTR Temporary = @s BaseSTR
scoreboard players operation $CurrentINT Temporary = @s BaseINT
scoreboard players operation $CurrentDEX Temporary = @s BaseDEX
scoreboard players operation $CurrentDEF Temporary = @s BaseDEF
scoreboard players operation $CurrentAGI Temporary = @s BaseAGI
scoreboard players operation $CurrentCRT Temporary = @s BaseCRT
scoreboard players operation $CurrentLUK Temporary = @s BaseLUK

# 自然回復表示用のスコア
    # レベルアップ前との比較値
        scoreboard players operation $CurrentHPR Temporary -= $PreviousHPR Temporary
        scoreboard players operation $CurrentMPR Temporary -= $PreviousMPR Temporary
        scoreboard players operation $CurrHPRInt Temporary = $CurrentHPR Temporary
        scoreboard players operation $CurrHPRInt Temporary /= #100 Constant
        scoreboard players operation $CurrHPRDec Temporary = $CurrentHPR Temporary
        scoreboard players operation $CurrHPRDec Temporary %= #100 Constant
        scoreboard players operation $CurrMPRInt Temporary = $CurrentMPR Temporary
        scoreboard players operation $CurrMPRInt Temporary /= #100 Constant
        scoreboard players operation $CurrMPRDec Temporary = $CurrentMPR Temporary
        scoreboard players operation $CurrMPRDec Temporary %= #100 Constant
        execute if score $CurrHPRInt Temporary matches 1.. if score $CurrHPRDec Temporary matches 1..9 run scoreboard players set $CurrHPRDec10 Temporary 0
        execute if score $CurrMPRInt Temporary matches 1.. if score $CurrMPRDec Temporary matches 1..9 run scoreboard players set $CurrMPRDec10 Temporary 0
    scoreboard players operation $BaseHPRInt Temporary = @s BaseHPR
    scoreboard players operation $BaseHPRInt Temporary /= #100 Constant
    scoreboard players operation $BaseHPRDec Temporary = @s BaseHPR
    scoreboard players operation $BaseHPRDec Temporary %= #100 Constant
    scoreboard players operation $BaseMPRInt Temporary = @s BaseMPR
    scoreboard players operation $BaseMPRInt Temporary /= #100 Constant
    scoreboard players operation $BaseMPRDec Temporary = @s BaseMPR
    scoreboard players operation $BaseMPRDec Temporary %= #100 Constant
    execute if score $BaseHPRInt Temporary matches 1.. if score $BaseHPRDec Temporary matches 1..9 run scoreboard players set $BaseHPRDec10 Temporary 0
    execute if score $BaseMPRInt Temporary matches 1.. if score $BaseMPRDec Temporary matches 1..9 run scoreboard players set $BaseMPRDec10 Temporary 0