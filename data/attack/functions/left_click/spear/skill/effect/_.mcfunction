# 無属性の演出
  particle minecraft:sweep_attack ^ ^0.5 ^2 0.7 0.2 0.7 0 10 force
  particle minecraft:sweep_attack ^ ^0.5 ^3.5 0.7 0.2 0.7 0 10 force
  particle minecraft:sweep_attack ^ ^0.5 ^5 0.7 0.2 0.7 0 10 force
  playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.1 2.0
  playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1.0 1.1
# 属性がある場合の演出
  execute if entity @s[tag=FireSkill] run function attack:left_click/spear/skill/effect/fire