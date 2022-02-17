# 弾と攻撃したプレイヤーの紐づけ
  scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
  scoreboard players operation @s dmg_dealt = @a[tag=this,limit=1] ap
  scoreboard players add @s dmg_dealt 30
  scoreboard players set @s MagicID 4502
# 向きを合わせる
  execute rotated as @a[tag=this,limit=1] run tp @s ~ ~1.5 ~ ~ ~
# 初期タグ削除
  tag @s remove WandInit