# 開けてから13tick以降に閉じた判定
  scoreboard players add @s menu_timer 1
  execute if score @s menu_timer matches 13 positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager] positioned ^ ^ ^-10 if score @s PlayerID = @p PlayerID run tp @s ^ ^ ^10
# 視点を動かす or 動く → メニューリセット
  execute if score @s menu_timer matches 13.. positioned ^ ^ ^10 unless entity @e[type=marker,tag=MenuManager,distance=..0.01] positioned ^ ^ ^-10 run function menu:reset