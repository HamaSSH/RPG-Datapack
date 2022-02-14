# 属性に応じたパーティクル表示
  execute if score @s FireAttack matches 1.. run function player:particle/fire
  execute if score @s WaterAttack matches 1.. run function player:particle/water
  execute if score @s ThunderAttack matches 1.. run function player:particle/thunder
  execute if score @s EarthAttack matches 1.. run function player:particle/earth
  execute if score @s WindAttack matches 1.. run function player:particle/wind