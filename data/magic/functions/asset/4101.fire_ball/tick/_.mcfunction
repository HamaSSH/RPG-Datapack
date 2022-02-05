# 当たり判定
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  execute if entity @e[tag=Enemy,tag=!HurtTime,distance=..2.5] run data modify entity @s Age set value 19
  execute as @e[tag=Enemy,tag=!HurtTime,distance=..2.5] run function magic:asset/4101.fire_ball/hit
# 移動
  tp ^ ^ ^1
# 演出
  particle minecraft:enchant ~ ~ ~ 0.3 0.3 0.3 0 15 force
  particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.03 10 force
  particle minecraft:flame ~ ~ ~ 0.2 0.1 0.2 0.03 3 force
# リセット
  execute unless block ^ ^ ^1 #attack:pass run kill @s
  scoreboard players reset $DmgDealt