# 当たり判定
    summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:50}
    execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/5102.homing_fire/init
# 演出
    playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.8 1.4
# リセット
    function core:trigger/sneak/reset