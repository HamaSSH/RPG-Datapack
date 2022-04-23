# 当たり判定
    summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:20}
    execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/5201.water_ball/init
# 演出
    particle minecraft:bubble_pop ^ ^0.5 ^0.3 0.1 0.3 0.1 0.04 20 force
    playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ 0.8 1.3
    playsound minecraft:entity.bee.sting master @a ~ ~ ~ 1 1.3
    playsound minecraft:block.shroomlight.place master @a ~ ~ ~ 0.6 1.5
    playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 0.6 1
# リセット
    function core:trigger/sneak/reset