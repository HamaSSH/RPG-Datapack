##########
#>
#

# modulo
    scoreboard players operation %2 Temporary = @s level
    scoreboard players operation %3 Temporary = @s level
    scoreboard players operation %5 Temporary = @s level
    scoreboard players operation %7 Temporary = @s level
    scoreboard players operation %10 Temporary = @s level
    scoreboard players operation %2 Temporary %= #2 Constant
    scoreboard players operation %3 Temporary %= #3 Constant
    scoreboard players operation %5 Temporary %= #5 Constant
    scoreboard players operation %7 Temporary %= #7 Constant
    scoreboard players operation %10 Temporary %= #10 Constant
    scoreboard players operation /10 Temporary = @s level
    scoreboard players operation /10 Temporary /= #10 Constant
# 職業スキルレベル
    execute if score %10 Temporary matches 0 if score @s SkillLevel matches ..4 run scoreboard players add @s SkillLevel 1
# 職業ごとの分岐
    execute if entity @s[team=Assassin] run function player:status/up/assassin
    execute if entity @s[team=Fighter] run function player:status/up/fighter
    execute if entity @s[team=Knight] run function player:status/up/knight
    execute if entity @s[team=Warrior] run function player:status/up/warrior
    execute if entity @s[team=Wizard] run function player:status/up/wizard
    execute if entity @s[team=Hunter] run function player:status/up/hunter
    function player:status/update/_
# リセット
    scoreboard players reset %2
    scoreboard players reset %3
    scoreboard players reset %5
    scoreboard players reset %7
    scoreboard players reset %10
    scoreboard players reset /10