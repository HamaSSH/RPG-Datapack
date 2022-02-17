# 初期処理
  execute if score @s ThunderAttack matches 1.. run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
# ループ処理
  tag @s add SwordTick
# クールダウン
  scoreboard players set @s skill_cd 300
# リセット
  function core:trigger/sneak/reset