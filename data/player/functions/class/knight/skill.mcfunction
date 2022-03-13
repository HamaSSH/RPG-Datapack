# 職業ステータスリセット
    function player:class/bonus/reset
# 「戦闘の天才」スキルレベルごとにステータス補正
    scoreboard players operation $HPRegen Temporary = @s hp_regen_base
    scoreboard players operation $MPRegen Temporary = @s mp_regen_base
    scoreboard players operation $A Temporary = @s skill_level
    scoreboard players add $A Temporary 1
    scoreboard players operation $HPRegen Temporary *= $A Temporary
    scoreboard players operation $HPRegen Temporary /= #2 Constant
    scoreboard players operation $MPRegen Temporary *= $A Temporary
    scoreboard players operation $MPRegen Temporary /= #4 Constant
# HP/MP_REGEN補正
    scoreboard players operation @s hp_regen_class += $HPRegen Temporary
    scoreboard players operation @s mp_regen_class += $MPRegen Temporary
    function player:status/update/_
# リセット
    scoreboard players reset $A