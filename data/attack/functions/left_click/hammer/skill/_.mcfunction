# 与ダメージ計算
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  scoreboard players operation $DmgDealt Temporary *= #7 Constant
  scoreboard players add $DmgDealt Temporary 15
# クリティカル時のダメージ表示用
  execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
  scoreboard players set $XPower Temporary 50
  scoreboard players set $YPower Temporary 200
# 当たり判定
  execute as @e[type=#mob:mobs,tag=Enemy,distance=..5] run function attack:left_click/hit
# 演出
  function attack:left_click/hammer/skill/effect/_
# リセット
  function attack:left_click/hammer/skill/reset
  function core:trigger/sneak/reset
  scoreboard players reset $DmgDealt
  scoreboard players reset $DamageColor
  scoreboard players reset $XPower
  scoreboard players reset $YPower