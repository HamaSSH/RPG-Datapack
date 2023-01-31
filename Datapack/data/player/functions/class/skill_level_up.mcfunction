##########
#>
#

# 職業ごとのスキルレベルアップ時の処理
    execute if entity @s[team=Warrior] run function player:class/warrior/skill_level_up
    execute if entity @s[team=Wizard] run function player:class/wizard/skill_level_up
# 演出(tellraw)
    execute if entity @s[team=Assassin] run data modify storage player:temp Skill set value '{"text":"連撃"}'
    execute if entity @s[team=Fighter] run data modify storage player:temp Skill set value '{"text":"背水の陣"}'
    execute if entity @s[team=Knight] run data modify storage player:temp Skill set value '{"text":"戦闘の天才"}'
    execute if entity @s[team=Warrior] run data modify storage player:temp Skill set value '{"text":"強靭な体"}'
    execute if entity @s[team=Wizard] run data modify storage player:temp Skill set value '{"text":"賢者の叡智"}'
    execute if entity @s[team=Hunter] run data modify storage player:temp Skill set value '{"text":"弓の達人"}'
    tellraw @s [{"text":"★ スキル「","color":"gray"},{"nbt":"Skill","storage":"player:temp","interpret":true},{"text":"」が強化された ( "},{"score":{"name":"$PreviousSkillLevel","objective":"Temporary"}},{"text":"→"},{"score":{"name":"@s","objective":"skill_level"}},{"text":" )"}]
# リセット
    data remove storage player:temp Skill