# HPを減算
  scoreboard players operation @s hp -= @s dmg_received
# ダメージ表示
  function attack:damage/display/type
# リセット
  scoreboard players reset @s dmg_received