# 調整
  execute if score @s mp matches ..0 run scoreboard players set @s mp 0
  execute if score @s mp >= @s mp_max run scoreboard players operation @s mp = @s mp_max
# MPの割合計算
  scoreboard players operation @s mp_ratio = @s mp
  scoreboard players operation @s mp_ratio *= #100 Constant
  scoreboard players operation @s mp_ratio /= @s mp_max
# XPBar操作
  function player:status/mp/bar/control
  function player:status/mp/match_value