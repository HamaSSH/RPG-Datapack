##########
#>
#

# レベルアップ前のレベル
    execute unless entity @s[tag=ClassChange] unless score $PreviousLevel Temporary matches 1.. run function player:status/level/previous_data
# レベルアップ処理
    scoreboard players operation @s xp -= @s xp_next
    scoreboard players add @s level 1
    execute if entity @s[team=Assassin] run scoreboard players add @s lv_assassin 1
    execute if entity @s[team=Fighter] run scoreboard players add @s lv_fighter 1
    execute if entity @s[team=Knight] run scoreboard players add @s lv_knight 1
    execute if entity @s[team=Warrior] run scoreboard players add @s lv_warrior 1
    execute if entity @s[team=Wizard] run scoreboard players add @s lv_wizard 1
    execute if entity @s[team=Hunter] run scoreboard players add @s lv_hunter 1
    function player:status/up/_
# レベルアップ表示用のfunction呼び出し
    function player:status/level/xp/calculate
    execute unless entity @s[tag=ClassChange] if score @s xp < @s xp_next run function player:status/level/tellraw
# 複数レベルアップする場合再帰
    execute if score @s xp >= @s xp_next run function player:status/level/up