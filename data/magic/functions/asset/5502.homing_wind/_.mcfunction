# 当たり判定
    summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:50}
    execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/5502.homing_wind/init
# 演出
    playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.6 1.4
    playsound minecraft:entity.goat.screaming.long_jump master @a ~ ~ ~ 0.8 1.0
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.5 1.0