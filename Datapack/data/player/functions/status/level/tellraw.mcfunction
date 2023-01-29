# 演出(レベルアップ一度きり)
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0
    # 自分以外へのtellraw
        tag @s add LevelUp
        tellraw @a[tag=!LevelUp] ["☆ ",{"selector":"@s","bold":true},{"text":"のレベルが上がった！"},{"text":" ( "},{"score":{"name":"$PreviousLevel","objective":"Temporary"}},{"text":"→"},{"score":{"name":"@s","objective":"level"},"color":"yellow","bold":true},{"text":" )"}]
        tag @s remove LevelUp
    # 自分へのtellraw
        tellraw @s ["☆ ",{"text":"レベルが上がった！"},{"text":" ( "},{"score":{"name":"$PreviousLevel","objective":"Temporary"}},{"text":"→"},{"score":{"name":"@s","objective":"level"},"color":"yellow","bold":true},{"text":" )"}]
        execute unless score @s skill_level = $PreviousSkillLevel Temporary run function player:class/skill_level_up
# ステータススコア上昇値計算
    scoreboard players operation $DifferenceHP Temporary = @s hp_base
    scoreboard players operation $DifferenceMP Temporary = @s mp_base
    scoreboard players operation $DifferenceHPRegen Temporary = @s hp_regen_base
    scoreboard players operation $DifferenceMPRegen Temporary = @s mp_regen_base
    scoreboard players operation $DifferenceAD Temporary = @s ad_base
    scoreboard players operation $DifferenceAP Temporary = @s ap_base
    scoreboard players operation $DifferenceDEX Temporary = @s dex_base
    scoreboard players operation $DifferenceDEF Temporary = @s def_base
    scoreboard players operation $DifferenceSPD Temporary = @s spd_base
    scoreboard players operation $DifferenceCRT Temporary = @s crt_base
    scoreboard players operation $DifferenceLUK Temporary = @s luk_base
        scoreboard players operation $DifferenceHP Temporary -= $PreviousHP Temporary
        scoreboard players operation $DifferenceMP Temporary -= $PreviousMP Temporary
        scoreboard players operation $DifferenceHPRegen Temporary -= $PreviousHPRegen Temporary
        scoreboard players operation $DifferenceMPRegen Temporary -= $PreviousMPRegen Temporary
        scoreboard players operation $DifferenceAD Temporary -= $PreviousAD Temporary
        scoreboard players operation $DifferenceAP Temporary -= $PreviousAP Temporary
        scoreboard players operation $DifferenceDEX Temporary -= $PreviousDEX Temporary
        scoreboard players operation $DifferenceDEF Temporary -= $PreviousDEF Temporary
        scoreboard players operation $DifferenceSPD Temporary -= $PreviousSPD Temporary
        scoreboard players operation $DifferenceCRT Temporary -= $PreviousCRT Temporary
        scoreboard players operation $DifferenceLUK Temporary -= $PreviousLUK Temporary
# 自然回復スコア上昇値計算
    scoreboard players operation $HPRegenInt Temporary = @s hp_regen_base
    scoreboard players operation $HPRegenInt Temporary /= #100 Constant
    scoreboard players operation $HPRegenDec Temporary = @s hp_regen_base
    scoreboard players operation $HPRegenDec Temporary %= #100 Constant
    scoreboard players operation $MPRegenInt Temporary = @s mp_regen_base
    scoreboard players operation $MPRegenInt Temporary /= #100 Constant
    scoreboard players operation $MPRegenDec Temporary = @s mp_regen_base
    scoreboard players operation $MPRegenDec Temporary %= #100 Constant
        scoreboard players operation $DifferenceHPRegenInt Temporary = $DifferenceHPRegen Temporary
        scoreboard players operation $DifferenceHPRegenInt Temporary /= #100 Constant
        scoreboard players operation $DifferenceHPRegenDec Temporary = $DifferenceHPRegen Temporary
        scoreboard players operation $DifferenceHPRegenDec Temporary %= #100 Constant
        scoreboard players operation $DifferenceMPRegenInt Temporary = $DifferenceMPRegen Temporary
        scoreboard players operation $DifferenceMPRegenInt Temporary /= #100 Constant
        scoreboard players operation $DifferenceMPRegenDec Temporary = $DifferenceMPRegen Temporary
        scoreboard players operation $DifferenceMPRegenDec Temporary %= #100 Constant
# ステータス上昇値表示
    tellraw @s ""
    execute if score $DifferenceHP Temporary matches 1.. run tellraw @s [{"text":"\uE240 最大ＨＰ:  "},{"score":{"name":"$PreviousHP","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"hp_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceHP","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceHPRegen Temporary matches 1.. run tellraw @s [{"text":"\uE241 自然回復:  "},{"score":{"name":"$PreviousHPRegenInt","objective":"Temporary"},"color":"#AAAAAA"},{"text":".","color":"#AAAAAA"},{"score":{"name":"$PreviousHPRegenDec","objective":"Temporary"},"color":"#AAAAAA"},{"text":"/s → ","color":"#AAAAAA"},{"score":{"name":"$HPRegenInt","objective":"Temporary"},"bold":true},{"text":".","bold":true},{"score":{"name":"$HPRegenDec","objective":"Temporary"},"bold":true},{"text":"/s","bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceHPRegenInt","objective":"Temporary"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"$DifferenceHPRegenDec","objective":"Temporary"},"color":"green"},{"text":"/s","color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceMP Temporary matches 1.. run tellraw @s [{"text":"\uE242 最大ＭＰ:  "},{"score":{"name":"$PreviousMP","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"mp_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceMP","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceMPRegen Temporary matches 1.. run tellraw @s [{"text":"\uE243 自然回復:  "},{"score":{"name":"$PreviousMPRegenInt","objective":"Temporary"},"color":"#AAAAAA"},{"text":".","color":"#AAAAAA"},{"score":{"name":"$PreviousMPRegenDec","objective":"Temporary"},"color":"#AAAAAA"},{"text":"/s → ","color":"#AAAAAA"},{"score":{"name":"$MPRegenInt","objective":"Temporary"},"bold":true},{"text":".","bold":true},{"score":{"name":"$MPRegenDec","objective":"Temporary"},"bold":true},{"text":"/s","bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceMPRegenInt","objective":"Temporary"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"$DifferenceMPRegenDec","objective":"Temporary"},"color":"green"},{"text":"/s","color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceAD Temporary matches 1.. run tellraw @s [{"text":"\uE244 物理攻撃:  "},{"score":{"name":"$PreviousAD","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"ad_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceAD","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceAP Temporary matches 1.. run tellraw @s [{"text":"\uE245 魔法攻撃:  "},{"score":{"name":"$PreviousAP","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"ap_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceAP","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceDEX Temporary matches 1.. run tellraw @s [{"text":"\uE246 器用さ:     \uF003"},{"score":{"name":"$PreviousDEX","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"dex_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceDEX","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceDEF Temporary matches 1.. run tellraw @s [{"text":"\uE248 防御力:     \uF003"},{"score":{"name":"$PreviousDEF","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"def_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceDEF","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceSPD Temporary matches 1.. run tellraw @s [{"text":"\uE249 素早さ:     \uF003"},{"score":{"name":"$PreviousSPD","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"spd_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceSPD","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceCRT Temporary matches 1.. run tellraw @s [{"text":"\uE24A 会心:       \uF002"},{"score":{"name":"$PreviousCRT","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"crt_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceCRT","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $DifferenceLUK Temporary matches 1.. run tellraw @s [{"text":"\uE24B 幸運:       \uF002"},{"score":{"name":"$PreviousLUK","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"luk_base"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$DifferenceLUK","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    tellraw @s ""
# リセット
    scoreboard players reset $PreviousLevel
    scoreboard players reset $PreviousSkillLevel
    scoreboard players reset $MPRegenInt
    scoreboard players reset $MPRegenDec
    scoreboard players reset $HPRegenInt
    scoreboard players reset $HPRegenDec
    scoreboard players reset $PreviousHP
    scoreboard players reset $PreviousMP
    scoreboard players reset $PreviousHPRegen
    scoreboard players reset $PreviousHPRegenInt
    scoreboard players reset $PreviousHPRegenDec
    scoreboard players reset $PreviousMPRegen
    scoreboard players reset $PreviousMPRegenInt
    scoreboard players reset $PreviousMPRegenDec
    scoreboard players reset $PreviousAD
    scoreboard players reset $PreviousAP
    scoreboard players reset $PreviousDEX
    scoreboard players reset $PreviousDEF
    scoreboard players reset $PreviousSPD
    scoreboard players reset $PreviousCRT
    scoreboard players reset $PreviousLUK
        scoreboard players reset $DifferenceHP
        scoreboard players reset $DifferenceMP
        scoreboard players reset $DifferenceHPRegen
        scoreboard players reset $DifferenceHPRegenInt
        scoreboard players reset $DifferenceHPRegenDec
        scoreboard players reset $DifferenceMPRegen
        scoreboard players reset $DifferenceMPRegenInt
        scoreboard players reset $DifferenceMPRegenDec
        scoreboard players reset $DifferenceAD
        scoreboard players reset $DifferenceAP
        scoreboard players reset $DifferenceDEX
        scoreboard players reset $DifferenceDEF
        scoreboard players reset $DifferenceSPD
        scoreboard players reset $DifferenceCRT
        scoreboard players reset $DifferenceLUK