# ダメージブレ幅の決定
  scoreboard players operation $DmgBlur Temporary = @s dmg_received
  scoreboard players add $DmgBlur Temporary 24
  scoreboard players operation $DmgBlur Temporary /= #30 Constant
  scoreboard players operation $RNGMax Temporary = $DmgBlur Temporary
  scoreboard players operation $RNGMax Temporary *= #2 Constant
  scoreboard players add $RNGMax Temporary 1
# －と＋側にダメージブレを生成
  function core:rng
  scoreboard players operation $RNG Temporary -= $DmgBlur Temporary
  execute if score @s dmg_received matches 1.. run scoreboard players operation @s dmg_received += $RNG Temporary
# リセット
  scoreboard players reset $DmgBlur
  scoreboard players reset $RNG