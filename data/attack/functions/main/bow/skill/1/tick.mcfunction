# 与ダメージ計算
  scoreboard players operation $DmgDealt Temporary = @s dmg_dealt
  scoreboard players operation $DmgDealt Temporary *= #4 Constant
  scoreboard players add $DmgDealt Temporary 10
# ノックバック
  scoreboard players set $XPower Temporary 100
  scoreboard players set $YPower Temporary 300
# 当たり判定
  execute positioned ~ ~-1.18 ~ as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..2] run function attack:main/hit
# 演出(弓溜め)
  particle explosion ~ ~ ~ 0.5 0.5 0.5 1 2 force
  particle crit ~ ~ ~ 0.1 0.1 0.1 0 10 force
# 着弾したらkill
  execute unless block ~ ~ ~ #attack:pass run data modify entity @s PortalCooldown set value 0
  execute if data entity @s {PortalCooldown:0} run function attack:main/bow/arrow/kill
# リセット
  scoreboard players reset $DmgDealt
  scoreboard players reset $XPower
  scoreboard players reset $YPower