#> player:ui/skill_bar/cooldown
# ため攻撃のクールダウン表示

scoreboard players operation $PSkillTimer Temporary = @s SkillTimer
scoreboard players add $PSkillTimer Temporary 13
scoreboard players operation $PSkillTimer Temporary *= #27 Constant
scoreboard players operation $PSkillTimer Temporary /= #400 Constant
execute if score $PSkillTimer Temporary matches ..0 run data modify storage player:ui skill_bar set value '\uE1A0'
execute if score $PSkillTimer Temporary matches 1 run data modify storage player:ui skill_bar set value '\uE1A1'
execute if score $PSkillTimer Temporary matches 2 run data modify storage player:ui skill_bar set value '\uE1A2'
execute if score $PSkillTimer Temporary matches 3 run data modify storage player:ui skill_bar set value '\uE1A3'
execute if score $PSkillTimer Temporary matches 4 run data modify storage player:ui skill_bar set value '\uE1A4'
execute if score $PSkillTimer Temporary matches 5 run data modify storage player:ui skill_bar set value '\uE1A5'
execute if score $PSkillTimer Temporary matches 6 run data modify storage player:ui skill_bar set value '\uE1A6'
execute if score $PSkillTimer Temporary matches 7 run data modify storage player:ui skill_bar set value '\uE1A7'
execute if score $PSkillTimer Temporary matches 8 run data modify storage player:ui skill_bar set value '\uE1A8'
execute if score $PSkillTimer Temporary matches 9 run data modify storage player:ui skill_bar set value '\uE1A9'
execute if score $PSkillTimer Temporary matches 10 run data modify storage player:ui skill_bar set value '\uE1AA'
execute if score $PSkillTimer Temporary matches 11 run data modify storage player:ui skill_bar set value '\uE1AB'
execute if score $PSkillTimer Temporary matches 12 run data modify storage player:ui skill_bar set value '\uE1AC'
execute if score $PSkillTimer Temporary matches 13 run data modify storage player:ui skill_bar set value '\uE1AD'
execute if score $PSkillTimer Temporary matches 14 run data modify storage player:ui skill_bar set value '\uE1AE'
execute if score $PSkillTimer Temporary matches 15 run data modify storage player:ui skill_bar set value '\uE1AF'
execute if score $PSkillTimer Temporary matches 16 run data modify storage player:ui skill_bar set value '\uE1B0'
execute if score $PSkillTimer Temporary matches 17 run data modify storage player:ui skill_bar set value '\uE1B1'
execute if score $PSkillTimer Temporary matches 18 run data modify storage player:ui skill_bar set value '\uE1B2'
execute if score $PSkillTimer Temporary matches 19 run data modify storage player:ui skill_bar set value '\uE1B3'
execute if score $PSkillTimer Temporary matches 20 run data modify storage player:ui skill_bar set value '\uE1B4'
execute if score $PSkillTimer Temporary matches 21 run data modify storage player:ui skill_bar set value '\uE1B5'
execute if score $PSkillTimer Temporary matches 22 run data modify storage player:ui skill_bar set value '\uE1B6'
execute if score $PSkillTimer Temporary matches 23 run data modify storage player:ui skill_bar set value '\uE1B7'
execute if score $PSkillTimer Temporary matches 24 run data modify storage player:ui skill_bar set value '\uE1B8'
execute if score $PSkillTimer Temporary matches 25 run data modify storage player:ui skill_bar set value '\uE1B9'
execute if score $PSkillTimer Temporary matches 26 run data modify storage player:ui skill_bar set value '\uE1BA'
execute if score $PSkillTimer Temporary matches 27 run data modify storage player:ui skill_bar set value '\uE1BB'
scoreboard players reset $PSkillTimer Temporary