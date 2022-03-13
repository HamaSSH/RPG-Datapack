# 獲得経験値UP計算式 → xp_gained = xp_gained * (100 + luk/4) / 100
# = xp_gained * (luk + 400) / 400
  scoreboard players operation $XPBoost Temporary = @s luk
  scoreboard players add $XPBoost Temporary 400
  scoreboard players operation @s xp_gained *= $XPBoost Temporary
  scoreboard players operation @s xp_gained /= #400 Constant
# リセット
  scoreboard players reset $XPBoost