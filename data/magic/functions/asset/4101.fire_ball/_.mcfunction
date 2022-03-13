# 当たり判定
    summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:20}
    execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/4101.fire_ball/init
# 演出
    particle minecraft:flame ^ ^0.5 ^0.3 0.1 0.3 0.1 0.04 5 force
    playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.8 1.4
# リセット
    function core:trigger/sneak/reset