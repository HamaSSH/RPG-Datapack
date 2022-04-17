# ポーションのバフ
    execute store result score $LUKBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"luk"}].value
    execute store result score $LUKDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"luk"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $LUKDuration Temporary /= #5 Constant
    scoreboard players operation $LUKDurMin Temporary = $LUKDuration Temporary
    scoreboard players operation $LUKDurMin Temporary /= #60 Constant
    scoreboard players operation $LUKDurSec10 Temporary = $LUKDuration Temporary
    scoreboard players operation $LUKDurSec10 Temporary %= #60 Constant
    scoreboard players operation $LUKDurSec10 Temporary /= #10 Constant
    scoreboard players operation $LUKDurSec1 Temporary = $LUKDuration Temporary
    scoreboard players operation $LUKDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $LUKDuration