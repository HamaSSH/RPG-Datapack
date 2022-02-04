# 無属性の演出
  particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0.01 1 force
  playsound resource:custom.weapon.sword master @a ~ ~ ~ 1.0 1.0
# 属性がある場合の演出
  execute if score @s FireAttack matches 1.. run function attack:left_click/sword/effect/fire