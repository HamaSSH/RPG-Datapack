# クリティカル時のダメージ表示用
  execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# Hitタグ付け
  tag @s add this
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run tag @s add Hit
  execute positioned ^ ^ ^0.5 positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run tag @s add Hit
  execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#mob:mobs,tag=Enemy,tag=Hit,dx=0,limit=1] run data modify entity @s Age set value 19
  execute as @e[type=#mob:mobs,tag=Enemy,tag=Hit,distance=..5] run function attack:main/wand/hit
# 移動
  tp @s ^ ^ ^1
  execute if score @s skill_level matches 1.. run function attack:main/wand/homing
# 演出(杖通常)
  function attack:main/wand/particle/_
# リセット
  execute unless block ~ ~ ~ #attack:pass run kill @s
  scoreboard players reset $DamageColor
  scoreboard players reset $DmgDealt
  tag @s remove this