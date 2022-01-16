# HPの割合計算
  scoreboard players operation @s hp_ratio = @s hp
  scoreboard players operation @s hp_ratio *= #40 Constant
  scoreboard players operation @s hp_ratio /= @s hp_max
# HPの割合に応じてCustomNameをHPBarに変換、分岐
  execute if score @s hp_ratio matches ..16 run function mob:status/hp/display/apply/lv3/0
  execute if score @s hp_ratio matches 17..32 run function mob:status/hp/display/apply/lv3/1
  execute if score @s hp_ratio matches 33.. run function mob:status/hp/display/apply/lv2/4
# 表示時間
  data modify entity @s PortalCooldown set value 100
  tag @s add InCombat