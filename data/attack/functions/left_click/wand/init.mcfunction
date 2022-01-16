### 召喚したAECに対しての処理
  
# 弾と攻撃したプレイヤーの紐づけ
  scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
  scoreboard players operation @s dmg_dealt = @a[tag=this,limit=1] dmg_dealt
  execute if entity @a[tag=this,tag=CriticalHit,limit=1] run tag @s add CriticalHit
# 向きを合わせる
  execute rotated as @a[tag=this,limit=1] run tp @s ~ ~1.5 ~ ~ ~
# 初期タグ削除
  tag @s remove WandInit