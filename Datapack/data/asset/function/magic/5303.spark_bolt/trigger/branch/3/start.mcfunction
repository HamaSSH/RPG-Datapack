#> asset:magic/5303.spark_bolt/trigger/branch/3/start
# 電撃を伸ばす

scoreboard players set $BoltLength Temporary 17

# Rotationをずらす
    execute store result storage magic: rotation.yaw int 1 run random value -7..7
    execute store result storage magic: rotation.pitch int 1 run random value -3..3

# 伸ばし始める
    execute positioned ^ ^ ^0.5 run function asset:magic/5303.spark_bolt/trigger/branch/3/detect with storage magic: rotation

scoreboard players set $BoltLength Temporary 17

# Rotationをずらす
    execute store result storage magic: rotation.yaw int 1 run random value -7..7
    execute store result storage magic: rotation.pitch int 1 run random value -3..3

# 伸ばし始める
    execute positioned ^ ^ ^0.5 run function asset:magic/5303.spark_bolt/trigger/branch/3/detect with storage magic: rotation