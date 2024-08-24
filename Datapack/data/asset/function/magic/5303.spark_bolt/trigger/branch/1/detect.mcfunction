#> asset:magic/5303.spark_bolt/trigger/branch/1/detect
# 再帰で敵を検知

# 当たり判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:every_mob,tag=Enemy,dx=0,limit=1] run function asset:magic/5303.spark_bolt/trigger/detected

# 演出
    function asset:magic/5303.spark_bolt/trigger/branch/particle

# Rotationをずらす
    execute store result storage magic: rotation.yaw int 1 run random value -3..3
    execute store result storage magic: rotation.pitch int 1 run random value -1..1

# まだ電撃が伸ばせそうなら伸ばす
    scoreboard players remove $BoltLength Temporary 1
    $execute rotated ~$(yaw) ~ if score $BoltLength Temporary matches 0 positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision run function asset:magic/5303.spark_bolt/trigger/branch/2/start with storage magic: rotation
    $execute rotated ~$(yaw) ~ if score $BoltLength Temporary matches 1.. positioned ^ ^ ^0.5 run function asset:magic/5303.spark_bolt/trigger/branch/1/detect with storage magic: rotation