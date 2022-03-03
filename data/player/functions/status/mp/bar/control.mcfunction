say hi
# 操作前のレベルを一旦保存
  execute store result score $XPBarLevels Temporary run scoreboard players get @s mp
# レベル129はポイントが 0~1002 なので割合を調べるのに最適
  xp set @s 129 levels
  execute store result score $XPBarPoints Temporary run xp query @s points
  scoreboard players operation $Query PreviousMP = $XPBarPoints Temporary
# MPの割合(0~100%)との違いを調べ、適用
  scoreboard players operation $XPBarDif Temporary = @s mp_ratio
  scoreboard players operation $XPBarDif Temporary -= $XPBarPoints Temporary
  scoreboard players operation $XPBarDif PreviousMP = $XPBarDif Temporary
  scoreboard players operation $mpratio PreviousMP = @s mp_ratio
  scoreboard players operation $XPBarDif Temporary /= #6 Constant
  execute if score $XPBarDif Temporary matches 0 run scoreboard players operation @s PreviousMP = @s mp
# 経験値ポイント加算
  xp set @s 0 points
  scoreboard players operation $XPBarPoints Temporary += $XPBarDif Temporary
  scoreboard players operation $XPBarPoints Temporary *= #2^21 Constant
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 512 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 256 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 128 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 64 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 32 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 16 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 8 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 4 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 2 points
  scoreboard players operation $XPBarPoints Temporary *= #2 Constant
  execute if score $XPBarPoints Temporary matches ..-1 run xp add @s 1 points
# レベル数値加算
  xp set @s 0 levels
  scoreboard players operation $XPBarLevels Temporary *= #2^17 Constant
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 8192 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 4096 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 2048 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 1024 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 512 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 256 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 128 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 64 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 32 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 16 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 8 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 4 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 2 levels
  scoreboard players operation $XPBarLevels Temporary *= #2 Constant
  execute if score $XPBarLevels Temporary matches ..-1 run xp add @s 1 levels
# リセット
  # scoreboard players reset $XPBarDif
  # scoreboard players reset $XPBarLevels
  # scoreboard players reset $XPBarPoints