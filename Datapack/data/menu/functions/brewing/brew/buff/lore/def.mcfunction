##########
#>
#

# ポーションのバフ
    execute store result score $DEFBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"def"}].value
    execute store result score $DEFDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"def"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $DEFDuration Temporary /= #5 Constant
    scoreboard players operation $DEFDurMin Temporary = $DEFDuration Temporary
    scoreboard players operation $DEFDurMin Temporary /= #60 Constant
    scoreboard players operation $DEFDurSec10 Temporary = $DEFDuration Temporary
    scoreboard players operation $DEFDurSec10 Temporary %= #60 Constant
    scoreboard players operation $DEFDurSec10 Temporary /= #10 Constant
    scoreboard players operation $DEFDurSec1 Temporary = $DEFDuration Temporary
    scoreboard players operation $DEFDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $DEFDuration