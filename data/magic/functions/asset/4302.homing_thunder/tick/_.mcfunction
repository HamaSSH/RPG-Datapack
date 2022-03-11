# ホーミング
  tp @s ^ ^ ^0.8
  function attack:main/wand/homing
# 当たり判定
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  execute if entity @e[tag=Enemy,distance=..2.5] run data modify entity @s Age set value 49
  execute as @e[tag=Enemy,distance=..2.5] at @s run function magic:asset/4302.homing_thunder/hit
# 演出
  particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
  particle minecraft:dust 1 1 0.3 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 1 1 0.3 2 ^ ^ ^0.4 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 1 1 0.7 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 1 1 0.7 2 ^ ^ ^0.4 0.2 0.1 0.2 0 4 force
# リセット
  scoreboard players reset $DmgDealt