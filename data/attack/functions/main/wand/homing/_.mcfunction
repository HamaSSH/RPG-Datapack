# 角度取得
    data modify storage attack:temp Rotation set from entity @s Rotation
    execute store result score $RotationX Temporary run data get storage attack:temp Rotation[0] 100
    execute store result score $RotationY Temporary run data get storage attack:temp Rotation[1] 100
    #tellraw @a {"score":{"name":"$RotationX","objective": "Temporary"}}
    #tellraw @a {"score":{"name":"$RotationY","objective": "Temporary"}}
    #tellraw @a ""
# ホーミング角度設定
    scoreboard players set $Homing Temporary 100
    scoreboard players operation $Homing Temporary *= @s skill_level
    execute if entity @s[tag=WandSkill] run scoreboard players set $Homing Temporary 500
    # ホーミングする敵の特定
        function attack:main/wand/homing/target/_
    # 敵が右に居たら右に旋回
        execute facing entity @e[type=#mob:mobs,tag=HomingTarget,tag=Enemy,distance=..20,sort=nearest,limit=1] eyes positioned ^0.3 ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationX Temporary += $Homing Temporary
    # 敵が左に居たら左に旋回
        execute facing entity @e[type=#mob:mobs,tag=HomingTarget,tag=Enemy,distance=..20,sort=nearest,limit=1] eyes positioned ^-0.3 ^ ^3.0 rotated as @s positioned ^-4.0 ^ ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationX Temporary -= $Homing Temporary
    # 敵が下に居たら下に旋回
        execute facing entity @e[type=#mob:mobs,tag=HomingTarget,tag=Enemy,distance=..20,sort=nearest,limit=1] eyes positioned ^ ^0.3 ^3.0 rotated as @s positioned ^ ^4.0 ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationY Temporary += $Homing Temporary
    # 敵が上に居たら上に旋回
        execute facing entity @e[type=#mob:mobs,tag=HomingTarget,tag=Enemy,distance=..20,sort=nearest,limit=1] eyes positioned ^ ^-0.3 ^3.0 rotated as @s positioned ^ ^-4.0 ^ if entity @s[distance=..5.0] run scoreboard players operation $RotationY Temporary -= $Homing Temporary
    # ホーミングタグのはく奪
        tag @e[type=#mob:mobs,tag=Enemy,tag=HomingTarget,distance=..20,sort=nearest,limit=1] remove HomingTarget
# 角度代入
    execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $RotationX Temporary
    execute store result entity @s Rotation[1] float 0.01 run scoreboard players get $RotationY Temporary
# リセット
    data remove storage attack:temp Rotation
    scoreboard players reset $Homing
    scoreboard players reset $RotationX
    scoreboard players reset $RotationY