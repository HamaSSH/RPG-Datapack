#> lib:p_motion/apply
# 実行者の視線方向にMotionを付与する

# 実行者タグ
tag @s add PMotionExecutor

# 値の修正
    execute if score $MotionPower Temporary matches 1000001.. run scoreboard players set $MotionPower Temporary 1000000
    execute if score $MotionPower Temporary matches ..-1000001 run scoreboard players set $MotionPower Temporary -1000000
    execute unless score $MotionPower Temporary = $MotionPower Temporary run scoreboard players set $MotionPower Temporary 0

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
    data modify storage lib: motion set value {x1:0,x2:0,x3:0,y1:0,y2:0,y3:0,z1:0,z2:0,z3:0}
    # X軸方向
        data modify storage lib: motion.x_sign set value "+"
        execute if score $VectorX Temporary matches ..-1 run data modify storage lib: motion.x_sign set value "-"
        execute if score $VectorX Temporary matches ..-1 run scoreboard players operation $VectorX Temporary *= #-1 Constant
        execute store result storage lib: motion.x1 int 0.0001 run scoreboard players get $VectorX Temporary
        execute store result storage lib: motion.x2 int 0.01 run scoreboard players operation $VectorX Temporary %= #10000 Constant
        execute store result storage lib: motion.x3 int 1 run scoreboard players operation $VectorX Temporary %= #100 Constant
        execute if data storage lib: motion{x1:0} run data modify storage lib: motion.x1 set value 100
        execute if data storage lib: motion{x2:0} run data modify storage lib: motion.x2 set value 100
        execute if data storage lib: motion{x3:0} run data modify storage lib: motion.x3 set value 100
    # Y軸方向
        data modify storage lib: motion.y_sign set value "+"
        execute if score $VectorY Temporary matches ..-1 run data modify storage lib: motion.y_sign set value "-"
        execute if score $VectorY Temporary matches ..-1 run scoreboard players operation $VectorY Temporary *= #-1 Constant
        execute store result storage lib: motion.y1 int 0.0001 run scoreboard players get $VectorY Temporary
        execute store result storage lib: motion.y2 int 0.01 run scoreboard players operation $VectorY Temporary %= #10000 Constant
        execute store result storage lib: motion.y3 int 1 run scoreboard players operation $VectorY Temporary %= #100 Constant
        execute if data storage lib: motion{y1:0} run data modify storage lib: motion.y1 set value 100
        execute if data storage lib: motion{y2:0} run data modify storage lib: motion.y2 set value 100
        execute if data storage lib: motion{y3:0} run data modify storage lib: motion.y3 set value 100
    # Z軸方向
        data modify storage lib: motion.z_sign set value "+"
        execute if score $VectorZ Temporary matches ..-1 run data modify storage lib: motion.z_sign set value "-"
        execute if score $VectorZ Temporary matches ..-1 run scoreboard players operation $VectorZ Temporary *= #-1 Constant
        execute store result storage lib: motion.z1 int 0.0001 run scoreboard players get $VectorZ Temporary
        execute store result storage lib: motion.z2 int 0.01 run scoreboard players operation $VectorZ Temporary %= #10000 Constant
        execute store result storage lib: motion.z3 int 1 run scoreboard players operation $VectorZ Temporary %= #100 Constant
        execute if data storage lib: motion{z1:0} run data modify storage lib: motion.z1 set value 100
        execute if data storage lib: motion{z2:0} run data modify storage lib: motion.z2 set value 100
        execute if data storage lib: motion{z3:0} run data modify storage lib: motion.z3 set value 100

# Motionの適用
    execute positioned as @s run function lib:p_motion/summon_enchant with storage lib: motion

# リセット
    scoreboard players reset $VectorX Temporary
    scoreboard players reset $VectorY Temporary
    scoreboard players reset $VectorZ Temporary
    tp 83a-51-1-0-0 0.0 0.0 0.0 0.0 0.0
    data remove storage lib: Pos
    data remove storage lib: motion
    schedule function lib:motion/reset_power 1t