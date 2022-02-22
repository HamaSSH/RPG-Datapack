# 弓矢と放ったプレイヤーの紐づけ
  scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
  scoreboard players operation @s dmg_dealt = @a[tag=this,limit=1] dex
  data modify entity @s Owner set from entity @a[tag=this,limit=1] UUID
  data modify entity @s damage set value 4.0d
# プレイヤーの目元にtp
  execute if entity @a[tag=this,predicate=core:is_sneaking,limit=1] run tp ~ ~-98.68 ~
  execute unless entity @a[tag=this,predicate=core:is_sneaking,limit=1] run tp ~ ~-98.36 ~
# 矢を飛ばす
  data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=Knockback,sort=nearest,limit=1] Pos
# リセット
  tag @s remove ArrowInit