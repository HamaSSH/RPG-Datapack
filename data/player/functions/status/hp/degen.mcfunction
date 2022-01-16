# 回復タイマーを加算してHPを1奪取
  scoreboard players add @s hp_regen_timer 2000
  scoreboard players remove @s hp 1
# ダメージは1tickでどかんと食らって欲しいので再帰
  execute if score @s hp_regen_timer matches ..-2000 run function player:status/hp/degen