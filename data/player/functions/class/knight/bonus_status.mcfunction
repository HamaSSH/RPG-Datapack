# ナイトで槍を持っていた場合
  scoreboard players operation $ADBonus Temporary = @s ad_bonus
  scoreboard players operation $ADBonus Temporary *= #10 Constant
  scoreboard players add $ADBonus Temporary 60
  scoreboard players operation $ADBonus Temporary /= #40 Constant
  scoreboard players operation @s ad_bonus += $ADBonus Temporary
# リセット
  scoreboard players reset $ADBonus