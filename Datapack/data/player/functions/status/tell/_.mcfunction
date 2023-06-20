##########
#>
#

# 計算して出力
    execute if score @s hp_regen matches ..0 run scoreboard players set @s hp_regen 0
    execute if score @s mp_regen matches ..0 run scoreboard players set @s mp_regen 0
    scoreboard players operation $HPRegenInt Temporary = @s hp_regen
    scoreboard players operation $HPRegenInt Temporary /= #100 Constant
    scoreboard players operation $HPRegenDec Temporary = @s hp_regen
    scoreboard players operation $HPRegenDec Temporary %= #100 Constant
    scoreboard players operation $MPRegenInt Temporary = @s mp_regen
    scoreboard players operation $MPRegenInt Temporary /= #100 Constant
    scoreboard players operation $MPRegenDec Temporary = @s mp_regen
    scoreboard players operation $MPRegenDec Temporary %= #100 Constant
# REGEN
    scoreboard players operation $BaseHPRegenInt Temporary = @s BaseHPRegen
    scoreboard players operation $BaseHPRegenInt Temporary /= #100 Constant
    scoreboard players operation $BaseHPRegenDec Temporary = @s BaseHPRegen
    scoreboard players operation $BaseHPRegenDec Temporary %= #100 Constant
    scoreboard players operation $BaseMPRegenInt Temporary = @s BaseMPRegen
    scoreboard players operation $BaseMPRegenInt Temporary /= #100 Constant
    scoreboard players operation $BaseMPRegenDec Temporary = @s BaseMPRegen
    scoreboard players operation $BaseMPRegenDec Temporary %= #100 Constant
# REGEN
    scoreboard players operation $BonusHPRegen Temporary = @s hp_regen
    scoreboard players operation $BonusHPRegen Temporary -= @s BaseHPRegen
    scoreboard players operation $BonusMPRegen Temporary = @s mp_regen
    scoreboard players operation $BonusMPRegen Temporary -= @s BaseMPRegen
    scoreboard players operation $BonusHPRegenInt Temporary = $BonusHPRegen Temporary
    execute if score $BonusHPRegen Temporary matches ..0 run scoreboard players operation $BonusHPRegenInt Temporary *= #-1 Constant
    scoreboard players operation $BonusHPRegenInt Temporary /= #100 Constant
    scoreboard players operation $BonusHPRegenDec Temporary = $BonusHPRegen Temporary
    execute if score $BonusHPRegen Temporary matches ..0 run scoreboard players operation $BonusHPRegenDec Temporary *= #-1 Constant
    scoreboard players operation $BonusHPRegenDec Temporary %= #100 Constant
    scoreboard players operation $BonusMPRegenInt Temporary = $BonusMPRegen Temporary
    execute if score $BonusMPRegen Temporary matches ..0 run scoreboard players operation $BonusMPRegenInt Temporary *= #-1 Constant
    scoreboard players operation $BonusMPRegenInt Temporary /= #100 Constant
    scoreboard players operation $BonusMPRegenDec Temporary = $BonusMPRegen Temporary
    execute if score $BonusMPRegen Temporary matches ..0 run scoreboard players operation $BonusMPRegenDec Temporary *= #-1 Constant
    scoreboard players operation $BonusMPRegenDec Temporary %= #100 Constant
# HP,MP,AD,AP,DEX
    scoreboard players operation $BonusHP Temporary = @s hp_max
    scoreboard players operation $BonusHP Temporary -= @s BaseHP
    scoreboard players operation $BonusMP Temporary = @s mp_max
    scoreboard players operation $BonusMP Temporary -= @s BaseMP
    scoreboard players operation $BonusAD Temporary = @s ad
    scoreboard players operation $BonusAD Temporary -= @s BaseAD
    scoreboard players operation $BonusAP Temporary = @s ap
    scoreboard players operation $BonusAP Temporary -= @s BaseAP
    scoreboard players operation $BonusDEX Temporary = @s dex
    scoreboard players operation $BonusDEX Temporary -= @s BaseDEX
    scoreboard players operation $BonusDEF Temporary = @s def
    scoreboard players operation $BonusDEF Temporary -= @s BaseDEF
# DEF
    scoreboard players operation $ReductionA Temporary = #20000 Constant
    scoreboard players operation $ReductionB Temporary = @s def
    scoreboard players operation $ReductionB Temporary *= #2 Constant
    scoreboard players operation $ReductionB Temporary += #200 Constant
    scoreboard players operation $ReductionA Temporary /= $ReductionB Temporary
    scoreboard players operation $ReductionB Temporary = #100 Constant
    scoreboard players operation $ReductionB Temporary -= $ReductionA Temporary
# SPD
    scoreboard players operation $BonusSPD Temporary = @s spd
    scoreboard players operation $BonusSPD Temporary -= @s BaseSPD
    scoreboard players operation $SpeedInt Temporary = @s spd
    scoreboard players operation $SpeedInt Temporary *= #50 Constant
    scoreboard players operation $SpeedInt Temporary /= #100 Constant
    scoreboard players operation $SpeedDec Temporary = @s spd
    scoreboard players operation $SpeedDec Temporary *= #5 Constant
    scoreboard players operation $SpeedDec Temporary %= #10 Constant
    scoreboard players operation $Dodge Temporary = @s spd
    scoreboard players operation $Dodge Temporary /= #10 Constant
# CRT
    scoreboard players operation $BonusCRT Temporary = @s crt
    scoreboard players operation $BonusCRT Temporary -= @s BaseCRT
    scoreboard players operation $CrtChance Temporary = @s crt
    scoreboard players operation $CrtChance Temporary /= #4 Constant
    scoreboard players operation $CrtChance Temporary += #10 Constant
    execute if score @s crt matches 0 run scoreboard players set $CrtChance Temporary 0
    scoreboard players operation $CrtMultiplier Temporary = @s crt
    scoreboard players operation $CrtMultiplier Temporary /= #2 Constant
    scoreboard players operation $CrtMultiplier Temporary += #150 Constant
    execute if score @s crt matches 0 run scoreboard players set $CrtMultiplier Temporary 0
# LUK
    scoreboard players operation $BonusLUK Temporary = @s luk
    scoreboard players operation $BonusLUK Temporary -= @s BaseLUK
    scoreboard players operation $BonusGold Temporary = @s luk
    scoreboard players operation $BonusXP Temporary = @s luk
    execute if score @s luk matches 101..200 run scoreboard players operation $BonusXP Temporary /= #2 Constant
    execute if score @s luk matches 101..200 run scoreboard players operation $BonusXP Temporary += #100 Constant

# ステータスをチャットにアナウンス
    tellraw @s ""
    tellraw @s [{"text":"＊━━━━━ "},{"selector":"@s","bold":true},{"text":" のステータス"},{"text":" ━━━━━＊"}]
    function player:status/tell/l2
    function player:status/tell/l3
    function player:status/tell/l4
    tellraw @s ""
    function player:status/tell/l6
    function player:status/tell/l7
    function player:status/tell/l8
    tellraw @s [{"text":"＊━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━＊"}]
#リセット
    scoreboard players reset $HPRegen
    scoreboard players reset $HPRegenInt
    scoreboard players reset $HPRegenDec
    scoreboard players reset $MPRegen
    scoreboard players reset $MPRegenInt
    scoreboard players reset $MPRegenDec
    scoreboard players reset $BaseHPRegenInt
    scoreboard players reset $BaseHPRegenDec
    scoreboard players reset $BaseMPRegenInt
    scoreboard players reset $BaseMPRegenDec
    scoreboard players reset $BonusHPRegen
    scoreboard players reset $BonusMPRegen
    scoreboard players reset $BonusHPRegenInt
    scoreboard players reset $BonusHPRegenDec
    scoreboard players reset $BonusMPRegenInt
    scoreboard players reset $BonusMPRegenDec
    scoreboard players reset $BonusHP
    scoreboard players reset $BonusMP
    scoreboard players reset $BonusAD
    scoreboard players reset $BonusAP
    scoreboard players reset $BonusDEX
    scoreboard players reset $BonusDEF
    scoreboard players reset $ReductionA
    scoreboard players reset $ReductionB
    scoreboard players reset $BonusSPD
    scoreboard players reset $SpeedInt
    scoreboard players reset $SpeedDec
    scoreboard players reset $Dodge
    scoreboard players reset $BonusCRT
    scoreboard players reset $CrtChance
    scoreboard players reset $CrtMultiplier
    scoreboard players reset $BonusLUK
    scoreboard players reset $BonusGold
    scoreboard players reset $BonusXP