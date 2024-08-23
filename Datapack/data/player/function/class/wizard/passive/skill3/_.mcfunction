#> player:class/wizard/passive/skill3/_
# スキルレベルごとの効果

# 属性纏い時間延長
    execute if score @s PassiveSkill3 matches 1.. run function player:class/wizard/passive/skill3/focus

# 属性纏い中のステータスバフ
    execute if score @s PassiveSkill3 matches 2.. run function player:class/wizard/passive/skill3/status