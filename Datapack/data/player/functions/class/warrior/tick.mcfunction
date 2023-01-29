# パッシブスキル「強靭な体」-体力が低くなると防御力上がる
    scoreboard players operation $HPRatio Temporary = @s hp
    scoreboard players operation $HPRatio Temporary *= #100 Constant
    scoreboard players operation $HPRatio Temporary /= @s hp_max
    execute unless score @s PreviousHPRatio = $HPRatio Temporary run function player:class/warrior/skill
# リセット
    scoreboard players reset $HPRatio