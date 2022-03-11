# 角度取得
  data modify storage attack:temp Rotation set from entity @s Rotation
  execute store result score $RotationX Temporary run data get storage attack:temp Rotation[0] 10
  execute store result score $RotationY Temporary run data get storage attack:temp Rotation[1] 10
# ホーミング角度設定
  scoreboard players set $Homing Temporary 10
  scoreboard players operation $Homing Temporary *= @s skill_level
  execute if entity @s[tag=WandSkill] run scoreboard players set $Homing Temporary 50
  # 敵が右に居たら右に旋回
    execute facing entity @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..20,sort=nearest,limit=1] eyes positioned ^0.5 ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationX Temporary += $Homing Temporary
  # 敵が左に居たら左に旋回
    execute facing entity @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..20,sort=nearest,limit=1] eyes positioned ^-0.5 ^ ^3.0 rotated as @s positioned ^-4.0 ^ ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationX Temporary -= $Homing Temporary
  # 敵が下に居たら下に旋回
    execute facing entity @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..20,sort=nearest,limit=1] eyes positioned ^ ^0.5 ^3.0 rotated as @s positioned ^ ^4.0 ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationY Temporary += $Homing Temporary
  # 敵が上に居たら上に旋回
    execute facing entity @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..20,sort=nearest,limit=1] eyes positioned ^ ^-0.5 ^3.0 rotated as @s positioned ^ ^-4.0 ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationY Temporary -= $Homing Temporary
# 角度代入
  execute store result entity @s Rotation[0] float 0.1 run scoreboard players get $RotationX Temporary
  execute store result entity @s Rotation[1] float 0.1 run scoreboard players get $RotationY Temporary
# リセット
  data remove storage attack:temp Rotation
  scoreboard players reset $Homing
  scoreboard players reset $RotationX
  scoreboard players reset $RotationY