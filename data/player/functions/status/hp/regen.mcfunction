# 回復タイマーを減算してHPを1回復
  scoreboard players remove @s hp_regen_timer 2000
  execute if score @s hp < @s hp_max run scoreboard players add @s hp 1