##########
#>
#

# 当たり判定
    summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:20}
    execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/5401.earth_ball/init
# 演出
    playsound minecraft:block.stem.step master @a ~ ~ ~ 1.0 0.9
    playsound minecraft:block.shroomlight.step master @a ~ ~ ~ 1.0 0.9