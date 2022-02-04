### 杖の左クリック検知

# 当たり判定
  summon area_effect_cloud ~ ~ ~ {Tags:["Wand","WandInit"],Duration:20}
  execute as @e[type=area_effect_cloud,tag=WandInit,distance=..0.01] run function attack:left_click/wand/init
# 演出
  particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 0.1 10 force
  playsound resource:custom.weapon.wand master @a ~ ~ ~ 1.0 1.0
  execute if score @s FireAttack matches 1.. run function attack:left_click/wand/playsound/fire
  execute if score @s WaterAttack matches 1.. run function attack:left_click/wand/playsound/water
  execute if score @s ThunderAttack matches 1.. run function attack:left_click/wand/playsound/thunder
  execute if score @s EarthAttack matches 1.. run function attack:left_click/wand/playsound/earth
  execute if score @s WindAttack matches 1.. run function attack:left_click/wand/playsound/wind
# リセット
  function core:trigger/sneak/reset