# ポーションのバフ
    execute store result score $MPBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"mp"}].value
    execute store result score $MPDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"mp"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $MPDuration Temporary /= #5 Constant
    scoreboard players operation $MPDurMin Temporary = $MPDuration Temporary
    scoreboard players operation $MPDurMin Temporary /= #60 Constant
    scoreboard players operation $MPDurSec10 Temporary = $MPDuration Temporary
    scoreboard players operation $MPDurSec10 Temporary %= #60 Constant
    scoreboard players operation $MPDurSec10 Temporary /= #10 Constant
    scoreboard players operation $MPDurSec1 Temporary = $MPDuration Temporary
    scoreboard players operation $MPDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $MPDuration