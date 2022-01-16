# 操作前のレベルを一旦保存
  execute store result score $XPBarLevels Temporary run xp query @s levels
# レベル129はポイントが 0~1002 なので割合を調べるのに最適
  xp set @s 129 levels
  execute store result score $XPBarPoints Temporary run xp query @s points
# MPの割合(0~100%)との違いを調べ、適用
  scoreboard players operation $XPBarDif Temporary = @s mp_ratio
  scoreboard players operation $XPBarDif Temporary *= #10 Constant
  scoreboard players operation $XPBarDif Temporary -= $XPBarPoints Temporary
  scoreboard players operation $XPBarDif Temporary /= #5 Constant
  execute if score $XPBarDif Temporary matches 0 run scoreboard players operation @s PreviousMP = @s mp
# 経験値ポイント加減
  execute if score $XPBarDif Temporary matches 1.. run function player:status/mp/bar/points/add
  execute if score $XPBarDif Temporary matches ..-1 run function player:status/mp/bar/points/remove
# レベル数値加減
  xp set @s 0 levels
  execute if score $XPBarLevels Temporary matches 1.. run function player:status/mp/bar/levels/add
# リセット
  scoreboard players reset $XPBarDif
  scoreboard players reset $XPBarLevels
  scoreboard players reset $XPBarPoints