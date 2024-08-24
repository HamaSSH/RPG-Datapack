#> asset:magic/5303.spark_bolt/trigger/branch/2/start
# 電撃を伸ばす

scoreboard players set $BoltLength Temporary 8

# Rotationをずらす
    execute store result storage magic: rotation.yaw int 1 run random value -5..5
    execute store result storage magic: rotation.pitch int 1 run random value -2..2

# 伸ばし始める
    execute positioned ^ ^ ^0.5 run function asset:magic/5303.spark_bolt/trigger/branch/2/detect with storage magic: rotation

scoreboard players set $BoltLength Temporary 8

# Rotationをずらす
    execute store result storage magic: rotation.yaw int 1 run random value -5..5
    execute store result storage magic: rotation.pitch int 1 run random value -2..2

# 伸ばし始める
    execute positioned ^ ^ ^0.5 run function asset:magic/5303.spark_bolt/trigger/branch/2/detect with storage magic: rotation