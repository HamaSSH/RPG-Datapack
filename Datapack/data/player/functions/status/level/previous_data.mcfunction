##########
#>
#

# レベルアップ前のステータス情報を保存
    scoreboard players operation $PreviousLevel Temporary = @s level
    scoreboard players operation $PreviousSkillLevel Temporary = @s skill_level
    # ステータススコア
        scoreboard players operation $PreviousHP Temporary = @s BaseHP
        scoreboard players operation $PreviousMP Temporary = @s BaseMP
        scoreboard players operation $PreviousHPRegen Temporary = @s BaseHPRegen
        scoreboard players operation $PreviousMPRegen Temporary = @s BaseMPRegen
        scoreboard players operation $PreviousAD Temporary = @s BaseAD
        scoreboard players operation $PreviousAP Temporary = @s BaseAP
        scoreboard players operation $PreviousDEX Temporary = @s BaseDEX
        scoreboard players operation $PreviousDEF Temporary = @s BaseDEF
        scoreboard players operation $PreviousSPD Temporary = @s BaseSPD
        scoreboard players operation $PreviousCRT Temporary = @s BaseCRT
        scoreboard players operation $PreviousLUK Temporary = @s BaseLUK
    # 自然回復スコア
        scoreboard players operation $PreviousHPRegenInt Temporary = $PreviousHPRegen Temporary
        scoreboard players operation $PreviousHPRegenInt Temporary /= #100 Constant
        scoreboard players operation $PreviousHPRegenDec Temporary = $PreviousHPRegen Temporary
        scoreboard players operation $PreviousHPRegenDec Temporary %= #100 Constant
        scoreboard players operation $PreviousMPRegenInt Temporary = $PreviousMPRegen Temporary
        scoreboard players operation $PreviousMPRegenInt Temporary /= #100 Constant
        scoreboard players operation $PreviousMPRegenDec Temporary = $PreviousMPRegen Temporary
        scoreboard players operation $PreviousMPRegenDec Temporary %= #100 Constant