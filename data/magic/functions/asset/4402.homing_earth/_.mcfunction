# 当たり判定
  summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:50}
  execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01] run function magic:asset/4402.homing_earth/init
# 演出
  playsound item.firecharge.use master @a ~ ~ ~ 0.6 1.4
  playsound block.stem.step master @a ~ ~ ~ 1.0 0.9
  playsound block.shroomlight.step master @a ~ ~ ~ 1.0 0.9
# リセット
  function core:trigger/sneak/reset