# チェストを開ける
    scoreboard players set $HeadPose Temporary -1100000
    execute store result score $CurrentAngle Temporary run data get entity @s Pose.Head[0] 10000
    scoreboard players operation $HeadPose Temporary -= $CurrentAngle Temporary
    scoreboard players operation $HeadPose Temporary /= #5 Constant
    scoreboard players operation $HeadPose Temporary += $CurrentAngle Temporary
# Pose.Headに角度を代入
    execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players get $HeadPose Temporary
# リセット
    scoreboard players reset $HeadPose Temporary
    scoreboard players reset $CurrentAngle Temporary