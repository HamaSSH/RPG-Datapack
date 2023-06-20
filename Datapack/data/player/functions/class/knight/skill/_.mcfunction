##########
#>
#

# 職業ステータスリセット
    function player:class/bonus/reset
# 「戦闘の天才」スキルレベルごとにステータス補正
    function player:class/knight/skill/get_regen
    scoreboard players operation $A Temporary = @s SkillLevel
    scoreboard players add $A Temporary 1
    scoreboard players operation $HPRegen Temporary *= $A Temporary
    scoreboard players operation $HPRegen Temporary /= #2 Constant
    scoreboard players operation $MPRegen Temporary *= $A Temporary
    scoreboard players operation $MPRegen Temporary /= #4 Constant
# HP/MP_REGEN補正
    scoreboard players operation @s ClassHPRegen = $HPRegen Temporary
    scoreboard players operation @s ClassMPRegen = $MPRegen Temporary
# OutOfCombat後3秒回復ブースト
    execute if score @s InCombat matches -60..-1 run function player:class/knight/skill/regen_boost
    execute if score @s InCombat matches 1.. run function player:class/bonus/reset
    function player:status/update/_
# リセット
    scoreboard players reset $HPRegen
    scoreboard players reset $MPRegen
    scoreboard players reset $A