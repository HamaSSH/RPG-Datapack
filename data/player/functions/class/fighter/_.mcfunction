# パッシブスキル「背水の陣」-体力が低くなると攻撃力が上がる
  scoreboard players operation $HPRatio Temporary = @s hp_list
  execute if score $HPRatio Temporary matches ..20 run function player:class/fighter/skill/_
# リセット
  scoreboard players reset $HPRatio