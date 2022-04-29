# modulo
    scoreboard players operation %2 Temporary = @s level
    scoreboard players operation %3 Temporary = @s level
    scoreboard players operation %5 Temporary = @s level
    scoreboard players operation %10 Temporary = @s level
    scoreboard players operation %2 Temporary %= #2 Constant
    scoreboard players operation %3 Temporary %= #3 Constant
    scoreboard players operation %5 Temporary %= #5 Constant
    scoreboard players operation %10 Temporary %= #10 Constant
# 職業スキルレベル
    scoreboard players operation $SkillLevel Temporary = @s level
    scoreboard players operation $SkillLevel Temporary %= #10 Constant
    execute if score $SkillLevel Temporary matches 0 if score @s skill_level matches ..4 run function player:class/skill_level_up
# 職業ごとの分岐
    scoreboard players add @s hp_base 6
    scoreboard players add @s hp_regen_base 5
    scoreboard players add @s mp_base 3
    scoreboard players add @s ad_base 1
    scoreboard players add @s def_base 4
    scoreboard players add @s crt_base 2
    execute if entity @s[team=Assassin] run function level:level_up/status/assassin
    execute if entity @s[team=Fighter] run function level:level_up/status/fighter
    execute if entity @s[team=Knight] run function level:level_up/status/knight
    execute if entity @s[team=Warrior] run function level:level_up/status/warrior
    execute if entity @s[team=Wizard] run function level:level_up/status/wizard
    execute if entity @s[team=Hunter] run function level:level_up/status/hunter
    function player:status/update/_
# リセット
    scoreboard players reset $SkillLevel
    scoreboard players reset %2
    scoreboard players reset %3
    scoreboard players reset %5
    scoreboard players reset %10