# レベルアップ前のレベル
    execute if entity @s[advancements={player:level_up={tick0=false}}] run scoreboard players operation @s PreviousLevel = @s level
# レベルアップ処理
    scoreboard players operation @s xp -= @s xp_next
    scoreboard players add @s level 1
    execute if entity @s[team=Assassin] run scoreboard players add @s lv_assassin 1
    execute if entity @s[team=Fighter] run scoreboard players add @s lv_fighter 1
    execute if entity @s[team=Knight] run scoreboard players add @s lv_knight 1
    execute if entity @s[team=Warrior] run scoreboard players add @s lv_warrior 1
    execute if entity @s[team=Wizard] run scoreboard players add @s lv_wizard 1
    execute if entity @s[team=Hunter] run scoreboard players add @s lv_hunter 1
# レベルアップ表示用のadvancement呼び出し
    execute unless entity @s[tag=ClassChange] run advancement grant @s only player:level_up tick0
# 職業スキルレベル
    scoreboard players operation $SkillLevel Temporary = @s level
    scoreboard players operation $SkillLevel Temporary %= #10 Constant
    execute if score $SkillLevel Temporary matches 0 if score @s skill_level matches ..4 run function player:class/level_up
# 複数レベルアップする場合
    function player:status/level/xp/calculate
    execute if score @s xp >= @s xp_next run function player:status/level/up