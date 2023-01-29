# パッシブスキル「背水の陣」-体力が低くなるとステータスが上がる
    scoreboard players operation $HPRatio Temporary = @s hp
    scoreboard players operation $HPRatio Temporary *= #100 Constant
    scoreboard players operation $HPRatio Temporary /= @s hp_max
    execute unless score @s PreviousHPRatio = $HPRatio Temporary run function player:class/fighter/skill
# リセット
    scoreboard players reset $HPRatio