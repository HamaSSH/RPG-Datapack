# 落下距離 → ダメージ
  scoreboard players operation @s fall_distance /= #100 Constant
  execute if score @s fall_distance matches 3.. run scoreboard players operation @s dmg_received = @s fall_distance
  execute if score @s fall_distance matches 3.. run function player:on_hurt/dmg_received
# リセット
  scoreboard players reset @s fall_distance