# MPを減算
  scoreboard players operation $MPDegen Temporary = @s mp_regen_timer
  scoreboard players operation $MPDegen Temporary /= #2000 Constant
  scoreboard players operation @s mp += $MPDegen Temporary
# 回復タイマーを減算
  scoreboard players operation $MPDegen Temporary *= #2000 Constant
  scoreboard players operation @s mp_regen_timer -= $MPDegen Temporary
# 最小値を下回っていたら戻す
  execute if score @s mp matches ..0 run scoreboard players set @s mp 0
# リセット
  scoreboard players reset $MPDegen