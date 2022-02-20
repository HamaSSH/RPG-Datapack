# レベルアップ前のレベル
  execute unless score $LevelUp Temporary matches 1.. run scoreboard players operation $PreviousLevel Temporary = @s level
# レベルアップ処理
  scoreboard players operation @s xp -= @s xp_next
  scoreboard players add @s level 1
  execute if entity @s[team=Assassin] run scoreboard players add @s lv_assassin 1
  execute if entity @s[team=Fighter] run scoreboard players add @s lv_fighter 1
  execute if entity @s[team=Knight] run scoreboard players add @s lv_knight 1
  execute if entity @s[team=Warrior] run scoreboard players add @s lv_warrior 1
  execute if entity @s[team=Wizard] run scoreboard players add @s lv_wizard 1
  execute if entity @s[team=Hunter] run scoreboard players add @s lv_hunter 1
# レベルアップ後のレベル
  scoreboard players operation $CurrentLevel Temporary = @s level
  scoreboard players add $LevelUp Temporary 1
# 複数レベルアップする場合
  function player:status/level/xp/calculate
  execute if score @s xp >= @s xp_next run function player:status/level/up
# 演出(レベルアップ一度きり)
  scoreboard players remove $LevelUp Temporary 1
  execute if score $LevelUp Temporary matches 0 run playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0
  execute if score $LevelUp Temporary matches 0 run tellraw @s ["☆ ",{"selector":"@s","bold":true},{"text":" がレベルアップしました！"},{"text":" ( "},{"score":{"name":"$PreviousLevel","objective":"Temporary"}},{"text":"→"},{"score":{"name":"$CurrentLevel","objective":"Temporary"},"color":"yellow","bold":true},{"text":" )"}]
# リセット
  scoreboard players reset $LevelUp
  scoreboard players reset $PreviousLevel
  scoreboard players reset $CurrentLevel