# ポーションのバフ
    execute store result score $DEXBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"dex"}].value
    execute store result score $DEXDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"dex"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $DEXDuration Temporary /= #5 Constant
    scoreboard players operation $DEXDurMin Temporary = $DEXDuration Temporary
    scoreboard players operation $DEXDurMin Temporary /= #60 Constant
    scoreboard players operation $DEXDurSec10 Temporary = $DEXDuration Temporary
    scoreboard players operation $DEXDurSec10 Temporary %= #60 Constant
    scoreboard players operation $DEXDurSec10 Temporary /= #10 Constant
    scoreboard players operation $DEXDurSec1 Temporary = $DEXDuration Temporary
    scoreboard players operation $DEXDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $DEXDuration