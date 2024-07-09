#> lib:motion/knockback
# モブにモーションを代入する($MotionPowerの設定は必須)

# $MotionPowerの設定が無ければ初期化
    execute unless score $MotionPower Temporary matches -2147483648..2147483647 run scoreboard players set $MotionPower Temporary 100

# 初期化として視点を自分にあわせる & ^ ^ ^1を取得
    execute in overworld positioned 0.0 0.0 0.0 run tp 83a-51-1-0-0 ^ ^ ^1

# ベクトル計算と補正
    data modify storage lib: Pos set from entity 83a-51-1-0-0 Pos
    execute store result score $VectorX Temporary run data get storage lib: Pos[0] 1000
    scoreboard players set $VectorY Temporary 360
    execute store result score $VectorZ Temporary run data get storage lib: Pos[2] 1000
    scoreboard players operation $VectorX Temporary *= $MotionPower Temporary
    scoreboard players operation $VectorY Temporary *= $MotionPower Temporary
    scoreboard players operation $VectorZ Temporary *= $MotionPower Temporary

# Motionの適用
    execute store result storage lib: Pos[0] double 0.00001 run scoreboard players get $VectorX Temporary
    execute store result storage lib: Pos[1] double 0.00001 run scoreboard players get $VectorY Temporary
    execute store result storage lib: Pos[2] double 0.00001 run scoreboard players get $VectorZ Temporary
    data modify entity @s Motion set from storage lib: Pos

# リセット
    scoreboard players reset $VectorX Temporary
    scoreboard players reset $VectorY Temporary
    scoreboard players reset $VectorZ Temporary
    tp 83a-51-1-0-0 0.0 0.0 0.0 0.0 0.0
    data remove storage lib: Pos
    schedule function lib:motion/reset_power 1t