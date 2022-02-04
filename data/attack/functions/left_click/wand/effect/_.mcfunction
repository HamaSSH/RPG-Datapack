# 無属性の演出
  execute if entity @s[tag=NeutralAttack] run particle minecraft:witch ~ ~ ~ 0.03 0.03 0.03 0 1 force
# 属性がある場合の演出
  execute if entity @s[tag=FireAttack] run function attack:left_click/wand/effect/fire
  execute if entity @s[tag=WaterAttack] run function attack:left_click/wand/effect/water
  execute if entity @s[tag=ThunderAttack] run function attack:left_click/wand/effect/thunder
  execute if entity @s[tag=EarthAttack] run function attack:left_click/wand/effect/earth
  execute if entity @s[tag=WandAttack] run function attack:left_click/wand/effect/wand