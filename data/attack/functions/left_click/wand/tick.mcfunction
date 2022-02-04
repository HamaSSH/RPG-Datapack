# クリティカル時のダメージ表示用
  execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# Hitタグ付け
  tag @s add this
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  execute if entity @e[tag=Enemy,tag=!HurtTime,distance=..2] run data modify entity @s Age set value 18
  execute as @e[tag=Enemy,tag=!HurtTime,distance=..2] run function attack:left_click/wand/hit
# 移動
  tp @s ^ ^ ^1
# 演出
  function attack:left_click/wand/particle/_
# リセット
  execute unless block ^ ^ ^1 #attack:pass run kill @s
  scoreboard players reset $DamageColor
  scoreboard players reset $DmgDealt
  tag @s remove this