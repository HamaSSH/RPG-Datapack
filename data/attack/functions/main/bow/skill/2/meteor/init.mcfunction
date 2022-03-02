# 溜め攻撃弓矢の初期処理
  data modify entity @s PortalCooldown set value 40
  tag @s add ArrowMeteor
# 弓矢と放ったプレイヤーの紐づけ
  scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
  scoreboard players operation @s dmg_dealt = @a[tag=this,limit=1] dex
  data modify entity @s Owner set from entity @a[tag=this,limit=1] UUID
# ばらけさせる
  function core:rng
  scoreboard players remove $RNG Temporary 50
  execute store result entity @s Motion[0] double 0.005 run scoreboard players get $RNG Temporary
  function core:rng
  scoreboard players remove $RNG Temporary 100
  execute store result entity @s Motion[1] double 0.01 run scoreboard players get $RNG Temporary
  function core:rng
  scoreboard players remove $RNG Temporary 50
  execute store result entity @s Motion[2] double 0.005 run scoreboard players get $RNG Temporary
# リセット
  tag @s remove ArrowInit
  scoreboard players reset $RNG