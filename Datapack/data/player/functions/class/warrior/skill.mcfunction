##########
#>
#

# 職業ステータスリセット
    function player:class/bonus/reset
# 「強靭な体」スキルレベルごとにステータス補正
    scoreboard players set $A Temporary 60
    scoreboard players operation $A Temporary -= $HPRatio Temporary
    scoreboard players operation $A Temporary *= @s skill_level
# DEF補正
    scoreboard players operation @s ClassDEF += $A Temporary
# HPが50%以下でなければリセット
    execute if score $HPRatio Temporary matches 61.. run function player:class/bonus/reset
    function player:status/update/_
# リセット
    scoreboard players reset $A
# HPRatio保存
    scoreboard players operation @s PreviousHPRatio = $HPRatio Temporary