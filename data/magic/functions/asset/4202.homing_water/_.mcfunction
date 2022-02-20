# 当たり判定
  summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:50}
  execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/4202.homing_water/init
# 演出
  playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.6 1.4
  playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ 0.3 1.3
  playsound minecraft:entity.bee.sting master @a ~ ~ ~ 0.4 1.3
  playsound minecraft:block.shroomlight.place master @a ~ ~ ~ 0.2 1.5
  playsound minecraft:entity.glow_squid.hurt master @a ~ ~ ~ 0.2 1
# リセット
  function core:trigger/sneak/reset