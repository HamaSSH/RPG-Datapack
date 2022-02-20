### 槍の左クリック検知

# クリティカル時のダメージ表示用
  execute if entity @s[tag=CriticalHit] run scoreboard players set $DamageColor Temporary 4
# ノックバック
  scoreboard players set $XPower Temporary 100
  scoreboard players set $YPower Temporary 80
# 当たり判定
  execute positioned ^ ^ ^2 as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..5,sort=nearest,limit=10] positioned ^10 ^ ^ if entity @s[distance=..10.7] positioned ^-20 ^ ^ if entity @s[distance=..10.7] run function attack:left_click/hit
# 演出(槍通常)
  function attack:left_click/spear/effect/_
# リセット
  function core:trigger/sneak/reset
  scoreboard players reset $DamageColor
  scoreboard players reset $XPower
  scoreboard players reset $YPower