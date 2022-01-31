# パッシブスキル「背水の陣」-体力が低くなると攻撃力が上がる
  scoreboard players operation $HPRatio Temporary = @s hp
  scoreboard players operation $HPRatio Temporary *= #100 Constant
  scoreboard players operation $HPRatio Temporary /= @s hp_max
  execute if score $HPRatio Temporary matches ..40 run function player:class/fighter/skill/_
# リセット
  scoreboard players reset $HPRatio