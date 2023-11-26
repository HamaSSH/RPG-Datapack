##########
#>
#

# 角度取得
    data modify storage lib: Rotation set from entity @s Rotation
    execute store result score $RotationX Temporary run data get storage lib: Rotation[0] 100
    execute store result score $RotationY Temporary run data get storage lib: Rotation[1] 100

# ホーミング角度設定
    execute store result score $HomingAngle Temporary run data get storage lib: HomingAngle

# ホーミングする敵の特定
    function lib:homing/target/_
    # 敵が右に居たら右に旋回
        execute facing entity @e[type=#lib:every_mob,tag=HomingTarget,distance=..20,limit=1] eyes positioned ^0.3 ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationX Temporary += $HomingAngle Temporary
    # 敵が左に居たら左に旋回
        execute facing entity @e[type=#lib:every_mob,tag=HomingTarget,distance=..20,limit=1] eyes positioned ^-0.3 ^ ^3.0 rotated as @s positioned ^-4.0 ^ ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationX Temporary -= $HomingAngle Temporary
    # 敵が下に居たら下に旋回
        execute facing entity @e[type=#lib:every_mob,tag=HomingTarget,distance=..20,limit=1] eyes positioned ^ ^0.3 ^3.0 rotated as @s positioned ^ ^4.0 ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationY Temporary += $HomingAngle Temporary
    # 敵が上に居たら上に旋回
        execute facing entity @e[type=#lib:every_mob,tag=HomingTarget,distance=..20,limit=1] eyes positioned ^ ^-0.3 ^3.0 rotated as @s positioned ^ ^-4.0 ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationY Temporary -= $HomingAngle Temporary
    # ホーミングタグのはく奪
        tag @e[type=#lib:every_mob,tag=HomingTarget,distance=..20] remove HomingTarget

# 角度代入
    execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $RotationX Temporary
    execute store result entity @s Rotation[1] float 0.01 run scoreboard players get $RotationY Temporary

# リセット
    data remove storage lib: Rotation
    scoreboard players reset $HomingAngle
    scoreboard players reset $RotationX
    scoreboard players reset $RotationY