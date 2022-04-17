# ポーションのバフ
    execute store result score $HPBuff Temporary run data get storage menu:temp Data.potionBuff[{bonus:"hp"}].value
    execute store result score $HPDuration Temporary run data get storage menu:temp Data.potionBuff[{bonus:"hp"}].duration
# バフの効果時間(mm:ss)
    scoreboard players operation $HPDuration Temporary /= #5 Constant
    scoreboard players operation $HPDurMin Temporary = $HPDuration Temporary
    scoreboard players operation $HPDurMin Temporary /= #60 Constant
    scoreboard players operation $HPDurSec10 Temporary = $HPDuration Temporary
    scoreboard players operation $HPDurSec10 Temporary %= #60 Constant
    scoreboard players operation $HPDurSec10 Temporary /= #10 Constant
    scoreboard players operation $HPDurSec1 Temporary = $HPDuration Temporary
    scoreboard players operation $HPDurSec1 Temporary %= #10 Constant
# リセット
    scoreboard players reset $HPDuration