### 全てを司る#tick

# 初join/relog処理
  execute as @a if entity @s[tag=!PlayerID] run function core:player/init
  execute as @a if score @s relog matches 1.. at @s run function core:player/relog
# プレイヤー動作のトリガー
  execute as @a at @s run function core:trigger/_
# ステータス表示GUI
  execute as @a run function core:actionbar/_
# 各namespaceの#tick呼び出し
  function attack:tick
  execute at @a run function item:tick
  execute as @e[tag=Magic] at @s run function magic:tick
  execute as @e[type=#mob:mobs,tag=Enemy] at @s run function mob:tick
  execute as @a at @s run function player:tick