# 初期処理
  execute if score @s ThunderAttack matches 1.. run function attack:left_click/sword/skill/effect/thunder_init
# ループ処理
  tag @s add SwordTick
# クールダウン
  scoreboard players set @s skill_cd 300
# リセット
  function core:trigger/sneak/reset