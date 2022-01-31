# 最大より大きければ調整
  execute if score @s hp >= @s hp_max run scoreboard players operation @s hp = @s hp_max
# HPの割合計算準備
  scoreboard players operation @s hp_ratio = @s hp
  scoreboard players operation @s hp_ratio *= #40 Constant
# Tabのlistのハート表示
  scoreboard players operation @s hp_list = @s hp_ratio
  scoreboard players operation @s hp_list /= @s hp_max
  scoreboard players add @s hp_list 1
  scoreboard players operation @s hp_list /= #2 Constant
  execute if score @s hp_list matches 0 run scoreboard players set @s hp_list 1
# HPの割合計算
  execute if score @s hp_max matches ..200 run scoreboard players operation @s hp_ratio /= #200 Constant
  execute unless score @s hp_max matches ..200 run scoreboard players operation @s hp_ratio /= @s hp_max
# HPの割合に応じてCustomNameをHPBarに変換、分岐
  execute if score @s hp_ratio matches ..16 run function player:status/hp/bar/apply/lv3/0
  execute if score @s hp_ratio matches 17..32 run function player:status/hp/bar/apply/lv3/1
  execute if score @s hp_ratio matches 33.. run function player:status/hp/bar/apply/lv2/4
  effect give @s minecraft:instant_health 1 20 true
  effect give @s minecraft:health_boost 1 0 true
  effect clear @s minecraft:health_boost