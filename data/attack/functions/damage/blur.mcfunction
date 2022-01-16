# ダメージブレ分配回数
  scoreboard players operation $DmgDistribute Temporary = @s dmg_received
  scoreboard players operation $DmgDistribute Temporary /= #10 Constant
# －と＋側にダメージブレを生成
  function attack:damage/distribute
  execute if score @s dmg_received matches 1.. run scoreboard players operation @s dmg_received += $DmgBlur Temporary
# リセット
  scoreboard players reset $DmgDistribute
  scoreboard players reset $DmgBlur
  tellraw @p {"score":{"name": "@s","objective": "dmg_received"}}