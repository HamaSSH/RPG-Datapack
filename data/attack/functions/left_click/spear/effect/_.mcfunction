# 無属性の演出
  particle minecraft:crit ^ ^1.7 ^ 0.25 0.1 0.25 0.2 2 force
  particle minecraft:crit ^ ^1.7 ^2 0.25 0.1 0.25 0.2 3 force
  particle minecraft:crit ^ ^1.7 ^4 0.25 0.1 0.25 0.2 3 force
  playsound resource:custom.weapon.spear master @a ~ ~ ~ 1.0 1.0
# 属性がある場合の演出
  execute if score @s FireAttack matches 1.. run function attack:left_click/spear/effect/fire