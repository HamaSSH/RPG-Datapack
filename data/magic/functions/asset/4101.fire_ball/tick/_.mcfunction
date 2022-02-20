# 前進
  tp ^ ^ ^1
# 当たり判定
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  execute if entity @e[tag=Enemy,tag=!HurtTime,distance=..2.5] run data modify entity @s Age set value 19
  execute as @e[tag=Enemy,tag=!HurtTime,distance=..2.5] run function magic:asset/4101.fire_ball/hit
# 演出
  particle minecraft:dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ~ ~ ~ 0.05 0.05 0.05 1 3 force
  particle minecraft:dust_color_transition 1 0.859 0.392 2 1 0.494 0.153 ~ ~ ~ 0.05 0.05 0.05 1 3 force
  particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
  particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.02 8 force
# リセット
  execute unless block ^ ^ ^1 #attack:pass run kill @s
  scoreboard players reset $DmgDealt