##########
#>
#

# 職業ステータスリセット
    function player:class/bonus/reset
# 「背水の陣」スキルレベルごとにステータス補正
    scoreboard players set $A Temporary 50
    scoreboard players operation $A Temporary -= $HPRatio Temporary
    scoreboard players add $A Temporary 5
    scoreboard players set $B Temporary 6
    scoreboard players operation $B Temporary -= @s skill_level
    scoreboard players operation $A Temporary /= $B Temporary
# AD/AP/DEX/DEF/SPD/CRT/LUK補正
    scoreboard players operation @s ad_class += $A Temporary
    scoreboard players operation @s ap_class += $A Temporary
    scoreboard players operation @s dex_class += $A Temporary
    scoreboard players operation $A Temporary *= #4 Constant
    scoreboard players operation @s def_class += $A Temporary
    scoreboard players operation @s spd_class += $A Temporary
    scoreboard players operation @s crt_class += $A Temporary
    scoreboard players operation @s luk_class += $A Temporary
# HPが50%以下でなければリセット
    execute if score $HPRatio Temporary matches 51.. run function player:class/bonus/reset
    function player:status/update/_
# リセット
    scoreboard players reset $A
    scoreboard players reset $B
# HPRatio保存
    scoreboard players operation @s PreviousHPRatio = $HPRatio Temporary