# 無属性の演出
  particle minecraft:enchanted_hit ^ ^1.4 ^2 0.5 0.1 0.5 0.5 15 force
  playsound resource:custom.weapon.dagger master @a ~ ~ ~ 1.0 1.0
# 属性がある場合の演出
  execute if score @s FireAttack matches 1.. run function attack:left_click/dagger/effect/fire