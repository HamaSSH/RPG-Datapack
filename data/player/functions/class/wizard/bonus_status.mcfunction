# ウィザードで杖を持っていた場合
  scoreboard players operation $APBonus Temporary = @s ap_bonus
  scoreboard players operation $APBonus Temporary *= #10 Constant
  scoreboard players add $APBonus Temporary 45
  scoreboard players operation $APBonus Temporary /= #30 Constant
  scoreboard players operation @s ap_bonus += $APBonus Temporary
# リセット
  scoreboard players reset $APBonus