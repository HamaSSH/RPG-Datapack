#> lib:p_motion/apply
# 実行者の視線方向にMotionを付与する

tag @s add PMotion
tp @s 0.0 0.0 0.0
tp @s ~ ~ ~

# 値を取得とベクトル計算 ( x1:1 , x2:1/100, x3:1/10000 )
    execute in overworld positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^1
    data modify storage lib: Pos set from entity 83a-51-1-0-0 Pos
    execute store result score $VectorX Temporary run data get storage lib: Pos[0] 1000
    execute store result score $VectorY Temporary run data get storage lib: Pos[1] 1000
    execute store result score $VectorZ Temporary run data get storage lib: Pos[2] 1000
    scoreboard players operation $VectorX Temporary *= $MotionPower Temporary
    scoreboard players operation $VectorY Temporary *= $MotionPower Temporary
    scoreboard players operation $VectorZ Temporary *= $MotionPower Temporary
    scoreboard players operation $VectorX Temporary /= #1000 Constant
    scoreboard players operation $VectorY Temporary /= #1000 Constant
    scoreboard players operation $VectorZ Temporary /= #1000 Constant

# Motionの計算
    # X軸方向
        data modify storage lib: signs.X set value 1
        execute if score $VectorX Temporary matches ..-1 run data modify storage lib: signs.X set value -1
        execute if data storage lib: signs{X:-1} run scoreboard players operation $VectorX Temporary *= #-1 Constant
        execute store result storage lib: motion.x1 int 0.0001 run scoreboard players operation $MotionX Temporary = $VectorX Temporary
        execute store result storage lib: motion.x2 int 0.01 run scoreboard players operation $MotionX Temporary %= #10000 Constant
        execute store result storage lib: motion.x3 int 1 run scoreboard players operation $MotionX Temporary %= #100 Constant
    # Y軸方向
        data modify storage lib: signs.Y set value 1
        execute if score $VectorY Temporary matches ..-1 run data modify storage lib: signs.Y set value -1
        execute if data storage lib: signs{Y:-1} run scoreboard players operation $VectorY Temporary *= #-1 Constant
        execute store result storage lib: motion.y1 int 0.0001 run scoreboard players operation $MotionY Temporary = $VectorY Temporary
        execute store result storage lib: motion.y2 int 0.01 run scoreboard players operation $MotionY Temporary %= #10000 Constant
        execute store result storage lib: motion.y3 int 1 run scoreboard players operation $MotionY Temporary %= #100 Constant
    # Z軸方向
        data modify storage lib: signs.Z set value 1
        execute if score $VectorZ Temporary matches ..-1 run data modify storage lib: signs.Z set value -1
        execute if data storage lib: signs{Z:-1} run scoreboard players operation $VectorZ Temporary *= #-1 Constant
        execute store result storage lib: motion.z1 int 0.0001 run scoreboard players operation $MotionZ Temporary = $VectorZ Temporary
        execute store result storage lib: motion.z2 int 0.01 run scoreboard players operation $MotionZ Temporary %= #10000 Constant
        execute store result storage lib: motion.z3 int 1 run scoreboard players operation $MotionZ Temporary %= #100 Constant

# Motionの適用
    scoreboard players reset $VectorX Temporary
    scoreboard players reset $VectorY Temporary
    scoreboard players reset $VectorZ Temporary
    scoreboard players reset $MotionX Temporary
    scoreboard players reset $MotionY Temporary
    scoreboard players reset $MotionZ Temporary
    function lib:p_motion/summon_enchant with storage lib: motion

# リセット
    tp 83a-51-1-0-0 0.0 0.0 0.0 0.0 0.0
    data remove storage lib: Pos
    data remove storage lib: signs
    data remove storage lib: motion
    schedule function lib:motion/reset_power 1t