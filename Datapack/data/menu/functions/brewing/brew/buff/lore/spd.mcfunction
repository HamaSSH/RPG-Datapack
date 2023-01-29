# ポーションのバフ
    execute store result score $SPDBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"spd"}].value
    execute store result score $SPDDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"spd"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $SPDDuration Temporary /= #5 Constant
    scoreboard players operation $SPDDurMin Temporary = $SPDDuration Temporary
    scoreboard players operation $SPDDurMin Temporary /= #60 Constant
    scoreboard players operation $SPDDurSec10 Temporary = $SPDDuration Temporary
    scoreboard players operation $SPDDurSec10 Temporary %= #60 Constant
    scoreboard players operation $SPDDurSec10 Temporary /= #10 Constant
    scoreboard players operation $SPDDurSec1 Temporary = $SPDDuration Temporary
    scoreboard players operation $SPDDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $SPDDuration