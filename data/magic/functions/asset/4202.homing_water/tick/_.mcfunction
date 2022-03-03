# ホーミング的な
  execute unless entity @e[tag=Enemy,distance=..15,limit=1] run tp ^ ^ ^0.7
  execute facing entity @e[tag=Enemy,distance=..15,sort=nearest,limit=1] eyes run tp ^ ^ ^0.6
# 当たり判定
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  execute if entity @e[tag=Enemy,distance=..2.5] run data modify entity @s Age set value 49
  execute as @e[tag=Enemy,distance=..2.5] run function magic:asset/4202.homing_water/hit
# 演出
  particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0 10 force
  particle minecraft:dust 0.231 0.384 0.894 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 0.231 0.384 0.894 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 0.518 0.71 1 2 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust 0.518 0.71 1 2 ^ ^ ^0.5 0.2 0.1 0.2 0 4 force
  particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.03 15 force
# リセット
  scoreboard players reset $DmgDealt