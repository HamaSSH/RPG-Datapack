# 無敵時間(HurtTime)のカウントダウン
  scoreboard players remove @s combat_timer 1
  execute if score @s combat_timer matches 0 run tag @s remove HurtTime