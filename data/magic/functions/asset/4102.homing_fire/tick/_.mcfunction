# ホーミング
  tp @s ^ ^ ^0.8
  function attack:main/wand/homing
# 当たり判定
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  execute if entity @e[tag=Enemy,distance=..2.5] run data modify entity @s Age set value 49
  execute as @e[tag=Enemy,distance=..2.5] run function magic:asset/4102.homing_fire/hit
# 演出
  particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
  particle minecraft:dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust_color_transition 1 0.859 0.392 2 1 0.494 0.153 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:dust_color_transition 1 0.859 0.392 2 1 0.494 0.153 ~ ~ ~ 0.2 0.1 0.2 0 4 force
  particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.02 8 force
# リセット
  scoreboard players reset $DmgDealt