# 弓矢の召喚
  execute positioned ~ ~100 ~ run summon arrow ^ ^ ^1 {Tags:["ArrowInit","LCArrow"]}
  execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^3 {Tags:["Knockback"]}
  execute positioned ~ ~100 ~ positioned ^ ^ ^1 as @e[type=arrow,tag=ArrowInit,distance=..0] run function attack:arrow/init
# 演出(弓通常)
  playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1.1