# 回復タイマーを加算してMPを1奪取
  scoreboard players add @s mp_regen_timer 2000
  scoreboard players remove @s mp 1
# MPダメージ(?)は1tickでどかんと食らって欲しいので再帰
  execute if score @s mp_regen_timer matches ..-2000 run function player:status/mp/degen