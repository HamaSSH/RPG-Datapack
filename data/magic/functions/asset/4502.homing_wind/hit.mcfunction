# Hit処理
  function mob:on_hurt/element/wind
  scoreboard players set $XPower Temporary 80
  scoreboard players set $YPower Temporary 80
  function attack:left_click/hit
# 演出
  particle minecraft:flame ~ ~ ~ 0.1 0.6 0.1 0.05 15 force
  particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
  playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.4 1.2
  playsound minecraft:entity.firework_rocket.blast_far master @a ~ ~ ~ 0.7 0.8