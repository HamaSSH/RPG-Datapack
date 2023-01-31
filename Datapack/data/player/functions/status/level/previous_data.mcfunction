##########
#>
#

# レベルアップ前のステータス情報を保存
    scoreboard players operation $PreviousLevel Temporary = @s level
    scoreboard players operation $PreviousSkillLevel Temporary = @s skill_level
    # ステータススコア
        scoreboard players operation $PreviousHP Temporary = @s hp_base
        scoreboard players operation $PreviousMP Temporary = @s mp_base
        scoreboard players operation $PreviousHPRegen Temporary = @s hp_regen_base
        scoreboard players operation $PreviousMPRegen Temporary = @s mp_regen_base
        scoreboard players operation $PreviousAD Temporary = @s ad_base
        scoreboard players operation $PreviousAP Temporary = @s ap_base
        scoreboard players operation $PreviousDEX Temporary = @s dex_base
        scoreboard players operation $PreviousDEF Temporary = @s def_base
        scoreboard players operation $PreviousSPD Temporary = @s spd_base
        scoreboard players operation $PreviousCRT Temporary = @s crt_base
        scoreboard players operation $PreviousLUK Temporary = @s luk_base
    # 自然回復スコア
        scoreboard players operation $PreviousHPRegenInt Temporary = $PreviousHPRegen Temporary
        scoreboard players operation $PreviousHPRegenInt Temporary /= #100 Constant
        scoreboard players operation $PreviousHPRegenDec Temporary = $PreviousHPRegen Temporary
        scoreboard players operation $PreviousHPRegenDec Temporary %= #100 Constant
        scoreboard players operation $PreviousMPRegenInt Temporary = $PreviousMPRegen Temporary
        scoreboard players operation $PreviousMPRegenInt Temporary /= #100 Constant
        scoreboard players operation $PreviousMPRegenDec Temporary = $PreviousMPRegen Temporary
        scoreboard players operation $PreviousMPRegenDec Temporary %= #100 Constant