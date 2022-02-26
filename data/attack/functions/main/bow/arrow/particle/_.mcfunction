# 無属性の演出
  execute if entity @s[tag=LCArrow] run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0 2 force
# 属性がある場合の演出
  execute if entity @s[tag=FireAttack] run function attack:main/bow/arrow/particle/fire
  execute if entity @s[tag=WaterAttack] run function attack:main/bow/arrow/particle/water
  execute if entity @s[tag=ThunderAttack] run function attack:main/bow/arrow/particle/thunder
  execute if entity @s[tag=EarthAttack] run function attack:main/bow/arrow/particle/earth
  execute if entity @s[tag=WindAttack] run function attack:main/bow/arrow/particle/wind