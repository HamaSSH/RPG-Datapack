# ポーションのバフ
    execute store result score $ADBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"ad"}].value
    execute store result score $ADDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"ad"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $ADDuration Temporary /= #5 Constant
    scoreboard players operation $ADDurMin Temporary = $ADDuration Temporary
    scoreboard players operation $ADDurMin Temporary /= #60 Constant
    scoreboard players operation $ADDurSec10 Temporary = $ADDuration Temporary
    scoreboard players operation $ADDurSec10 Temporary %= #60 Constant
    scoreboard players operation $ADDurSec10 Temporary /= #10 Constant
    scoreboard players operation $ADDurSec1 Temporary = $ADDuration Temporary
    scoreboard players operation $ADDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $ADDuration