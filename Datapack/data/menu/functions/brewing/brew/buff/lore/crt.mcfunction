# ポーションのバフ
    execute store result score $CRTBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"crt"}].value
    execute store result score $CRTDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"crt"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $CRTDuration Temporary /= #5 Constant
    scoreboard players operation $CRTDurMin Temporary = $CRTDuration Temporary
    scoreboard players operation $CRTDurMin Temporary /= #60 Constant
    scoreboard players operation $CRTDurSec10 Temporary = $CRTDuration Temporary
    scoreboard players operation $CRTDurSec10 Temporary %= #60 Constant
    scoreboard players operation $CRTDurSec10 Temporary /= #10 Constant
    scoreboard players operation $CRTDurSec1 Temporary = $CRTDuration Temporary
    scoreboard players operation $CRTDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $CRTDuration