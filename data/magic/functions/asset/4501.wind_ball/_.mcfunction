# 当たり判定
    summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:20}
    execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/4501.wind_ball/init
# 演出
    playsound minecraft:entity.goat.screaming.long_jump master @a ~ ~ ~ 1.0 1.0
    playsound minecraft:entity.goat.screaming.long_jump master @a ~ ~ ~ 1.0 1.0
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.9 1.0
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.9 1.0
# リセット
    function core:trigger/sneak/reset