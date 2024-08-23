#> player:class/wizard/passive/skill3/_
# スキルレベルごとの効果

# 属性纏い時間延長
    execute if score @s PassiveSkill3 matches 1.. run function player:class/wizard/passive/skill3/focus

# 属性纏い中のステータスバフ
    execute if score @s PassiveSkill3 matches 2.. run function player:class/wizard/passive/skill3/status

# 属性纏いの効果が強化される
    execute if score @s PassiveSkill3 matches 3.. run scoreboard players add @s ElementRank 1
    execute if score @s PassiveSkill3 matches 4 run scoreboard players add @s ElementRank 1