# 無属性の演出
  particle minecraft:sweep_attack ^ ^1.8 ^1.5 0.15 0.15 0.15 1 1 force
  playsound minecraft:custom.sword player @a ~ ~ ~ 0.4 1
# 属性がある場合の演出
  execute if entity @s[tag=FireSkill] run function attack:left_click/sword/skill/effect/fire