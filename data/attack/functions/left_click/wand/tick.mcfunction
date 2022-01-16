# 移動
  tp @s ^ ^ ^0.8
# Hitタグ付け
  # execute positioned ~ ~-1 ~ run tag @e[tag=Enemy,distance=..1] add Hit
  # execute if entity @s[tag=CritSuccess] run tag @e[tag=Enemy,tag=Hit] add CritSuccess
  # scoreboard players operation @e[tag=Enemy,tag=Hit] dmg_received = @s dmg_dealt
# 演出
  particle minecraft:witch ~ ~ ~ 0 0 0 0 1 force
# kill
  execute unless block ^ ^ ^0.8 #attack:pass run kill @s