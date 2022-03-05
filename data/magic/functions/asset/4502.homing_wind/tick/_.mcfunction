# ホーミング
  tp @s ^ ^ ^0.9
  function attack:main/wand/homing
# 当たり判定
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  execute if entity @e[tag=Enemy,distance=..2.5] run data modify entity @s Age set value 49
  execute as @e[tag=Enemy,distance=..2.5] run function magic:asset/4502.homing_wind/hit
# 演出
  particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
  particle minecraft:dust 0.478 0.784 0.275 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 0.478 0.784 0.275 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 0.725 1 0.506 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 0.725 1 0.506 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
# リセット
  scoreboard players reset $DmgDealt