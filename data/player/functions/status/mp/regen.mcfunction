# 回復タイマーを減算してMPを1回復
  scoreboard players remove @s mp_regen_timer 2000
  execute if score @s mp < @s mp_max run scoreboard players add @s mp 1