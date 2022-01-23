# 経験値ブレ幅の決定
  scoreboard players operation $XPDrop Temporary = @s xp
  scoreboard players add $XPDrop Temporary 9
  scoreboard players operation $XPDrop Temporary /= #10 Constant
  scoreboard players operation $RNGMax Temporary = $XPDrop Temporary
  scoreboard players operation $RNGMax Temporary *= #2 Constant
  scoreboard players add $RNGMax Temporary 1
# －と＋側に経験値ブレを生成
  function core:rng
  scoreboard players operation $RNG Temporary -= $XPDrop Temporary
  scoreboard players operation @s xp += $RNG Temporary
# リセット
  scoreboard players reset $XPDrop
  scoreboard players reset $DmgBlur
  scoreboard players reset $RNG