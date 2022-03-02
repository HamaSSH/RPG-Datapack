# 溜め攻撃弓矢の初期処理
  data modify entity @s PortalCooldown set value 20
  tag @s add ArrowSkill2
# 弓矢と放ったプレイヤーの紐づけ
  scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
  scoreboard players operation @s dmg_dealt = @a[tag=this,limit=1] dex
  data modify entity @s Owner set from entity @a[tag=this,limit=1] UUID