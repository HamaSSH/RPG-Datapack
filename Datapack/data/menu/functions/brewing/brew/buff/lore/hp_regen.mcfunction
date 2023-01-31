##########
#>
#

# ポーションのバフ
    execute store result score $HPRegenBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"hp_regen"}].value
    execute store result score $HPRegenDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"hp_regen"}].duration
# 自然回復スコアの小数計算
    scoreboard players operation $HPRegenBuffInt Temporary = $HPRegenBuff Temporary
    scoreboard players operation $HPRegenBuffDec Temporary = $HPRegenBuff Temporary
    scoreboard players operation $HPRegenBuffInt Temporary /= #100 Constant
    scoreboard players operation $HPRegenBuffDec Temporary %= #100 Constant
# バフの効果時間(mm:ss)
    scoreboard players operation $HPRegenDuration Temporary /= #5 Constant
    scoreboard players operation $HPRegenDurMin Temporary = $HPRegenDuration Temporary
    scoreboard players operation $HPRegenDurMin Temporary /= #60 Constant
    scoreboard players operation $HPRegenDurSec10 Temporary = $HPRegenDuration Temporary
    scoreboard players operation $HPRegenDurSec10 Temporary %= #60 Constant
    scoreboard players operation $HPRegenDurSec10 Temporary /= #10 Constant
    scoreboard players operation $HPRegenDurSec1 Temporary = $HPRegenDuration Temporary
    scoreboard players operation $HPRegenDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $HPRegenBuff
    scoreboard players reset $HPRegenDuration