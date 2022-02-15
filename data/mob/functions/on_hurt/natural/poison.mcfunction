# ダメージ表示色用
  scoreboard players set $DamageColor Temporary 2
# 毒/ウィザーダメージ
  scoreboard players operation @s dmg_received = @s hp_max
  scoreboard players operation @s dmg_received /= #80 Constant
  scoreboard players add @s dmg_received 3
# ダメージ適用
  function player:on_hurt/dmg_received
# リセット
  scoreboard players reset $DamageColor