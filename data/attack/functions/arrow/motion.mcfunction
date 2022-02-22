# Pos取得用AECの召喚
  data modify storage mob:temp Pos set from entity @e[type=area_effect_cloud,tag=Knockback,sort=nearest,limit=1] Pos
# Motionの演算
  data modify entity @s Motion set from storage mob:temp Pos
#リセット
  data remove storage mob:temp Pos
  scoreboard players reset $KnockbackX
  scoreboard players reset $KnockbackY
  scoreboard players reset $KnockbackZ
  scoreboard players reset $XPower
  scoreboard players reset $YPower