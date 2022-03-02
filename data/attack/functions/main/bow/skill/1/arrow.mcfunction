# 矢を飛ばす
  tp ~ ~1000 ~
  execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["Knockback"]}
  data modify entity @s Motion set from entity @e[type=area_effect_cloud,tag=Knockback,sort=nearest,limit=1] Pos
  data modify entity @s Rotation set from entity @a[tag=this,limit=1] Rotation
  kill @e[type=area_effect_cloud,tag=Knockback,sort=nearest,limit=1]
# 溜め攻撃弓矢の初期処理
  data modify entity @s NoGravity set value 1b
  data modify entity @s PortalCooldown set value 30
  tag @s add ArrowSkill1
# 弓矢と放ったプレイヤーの紐づけ
  scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
  scoreboard players operation @s dmg_dealt = @a[tag=this,limit=1] dex
  data modify entity @s Owner set from entity @a[tag=this,limit=1] UUID
# 属性付け
  execute if score @a[tag=this,limit=1] FireAttack matches 1.. run tag @s add FireAttack
  execute if score @a[tag=this,limit=1] WaterAttack matches 1.. run tag @s add WaterAttack
  execute if score @a[tag=this,limit=1] ThunderAttack matches 1.. run tag @s add ThunderAttack
  execute if score @a[tag=this,limit=1] EarthAttack matches 1.. run tag @s add EarthAttack
  execute if score @a[tag=this,limit=1] WindAttack matches 1.. run tag @s add WindAttack
  execute unless score @a[tag=this,limit=1] ElementAttack matches 1.. run tag @s add NeutralAttack