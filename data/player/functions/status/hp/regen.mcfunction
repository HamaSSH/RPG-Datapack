# HPを回復
  scoreboard players operation $HPRegen Temporary = @s hp_regen_timer
  scoreboard players operation $HPRegen Temporary /= #2000 Constant
  scoreboard players operation @s hp += $HPRegen Temporary
# 回復タイマーを減算
  scoreboard players operation $HPRegen Temporary *= #2000 Constant
  scoreboard players operation @s hp_regen_timer -= $HPRegen Temporary
# 最大値を超えていたら戻す
  execute if score @s hp > @s hp_max run scoreboard players operation @s hp = @s hp_max
# リセット
  scoreboard players reset $HPRegen