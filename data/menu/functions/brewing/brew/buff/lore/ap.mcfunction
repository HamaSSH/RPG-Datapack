# ポーションのバフ
    execute store result score $APBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"ap"}].value
    execute store result score $APDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"ap"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $APDuration Temporary /= #5 Constant
    scoreboard players operation $APDurMin Temporary = $APDuration Temporary
    scoreboard players operation $APDurMin Temporary /= #60 Constant
    scoreboard players operation $APDurSec10 Temporary = $APDuration Temporary
    scoreboard players operation $APDurSec10 Temporary %= #60 Constant
    scoreboard players operation $APDurSec10 Temporary /= #10 Constant
    scoreboard players operation $APDurSec1 Temporary = $APDuration Temporary
    scoreboard players operation $APDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $APDuration