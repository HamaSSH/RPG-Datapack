##########
#>
#

# ポーションのバフ
    execute store result score $MPRegenBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"mp_regen"}].value
    execute store result score $MPRegenDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"mp_regen"}].duration
# 自然回復スコアの小数計算
    scoreboard players operation $MPRegenBuffInt Temporary = $MPRegenBuff Temporary
    scoreboard players operation $MPRegenBuffDec Temporary = $MPRegenBuff Temporary
    scoreboard players operation $MPRegenBuffInt Temporary /= #100 Constant
    scoreboard players operation $MPRegenBuffDec Temporary %= #100 Constant
# バフの効果時間(mm:ss)
    scoreboard players operation $MPRegenDuration Temporary /= #5 Constant
    scoreboard players operation $MPRegenDurMin Temporary = $MPRegenDuration Temporary
    scoreboard players operation $MPRegenDurMin Temporary /= #60 Constant
    scoreboard players operation $MPRegenDurSec10 Temporary = $MPRegenDuration Temporary
    scoreboard players operation $MPRegenDurSec10 Temporary %= #60 Constant
    scoreboard players operation $MPRegenDurSec10 Temporary /= #10 Constant
    scoreboard players operation $MPRegenDurSec1 Temporary = $MPRegenDuration Temporary
    scoreboard players operation $MPRegenDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $MPRegenBuff
    scoreboard players reset $MPRegenDuration