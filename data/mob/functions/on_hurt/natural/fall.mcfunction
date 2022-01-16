# 落下ダメージ
  scoreboard players operation @s dmg_received = @s fall_distance
  scoreboard players operation @s dmg_received *= #6 Constant
  function mob:on_hurt/dmg_received
# リセット
  scoreboard players reset @s fall_distance