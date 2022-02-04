# 無属性の演出
  particle minecraft:explosion ^ ^0.4 ^1.2 0 0 0 0.1 1 force
  playsound resource:custom.weapon.hammer master @a ~ ~ ~ 1.0 1.0
# 属性がある場合の演出
  execute if score @s FireAttack matches 1.. run function attack:left_click/dagger/effect/fire