##########
#>
#

# 当たり判定
    summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:20}
    execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/5301.thunder_ball/init
# 演出
    playsound entity.shulker.shoot master @a ~ ~ ~ 1.0 1.5