# ダメージ表示色用
  scoreboard players set $DamageColor Temporary 1
# 炎上ダメージ
  scoreboard players set @s dmg_received 5
  function mob:on_hurt/dmg_received
# リセット
  scoreboard players reset $DamageColor