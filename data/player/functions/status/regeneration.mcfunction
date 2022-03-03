# HPMPが既に最大でなければ自然回復タイマーを加算
  execute unless score @s hp = @s hp_max run scoreboard players operation @s hp_regen_timer += @s hp_regen
  execute unless score @s mp = @s mp_max run scoreboard players operation @s mp_regen_timer += @s mp_regen
# 最大値を超えていたら戻す
  execute if score @s hp > @s hp_max run scoreboard players operation @s hp = @s hp_max
  execute if score @s mp > @s mp_max run scoreboard players operation @s mp = @s mp_max
# もしHPMPが1上がる/下がる分の自然回復タイマースコアが溜まっていれば回復
  execute if score @s hp_regen_timer matches 2000.. run function player:status/hp/regen
  execute if score @s hp_regen_timer matches ..-2000 run function player:status/hp/degen
  execute if score @s mp_regen_timer matches 2000.. run function player:status/mp/regen
  execute if score @s mp_regen_timer matches ..-2000 run function player:status/mp/degen