# 十分なMPがあるか検知
  execute unless score @s mp >= $MPCost Temporary run function player:status/mp/check/fail
  execute if score @s mp >= $MPCost Temporary run function player:status/mp/check/success
# リセット
  scoreboard players reset $MPCost