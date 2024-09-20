#> player:class/paladin/passive/skill3/_
# スキルレベルごとの効果

# シールドの最大数 I=1｜II=2｜III=3
    execute if score @s PassiveSkill3 matches 1 run scoreboard players add @s MaxShield 1
    execute if score @s PassiveSkill3 matches 2 run scoreboard players add @s MaxShield 2
    execute if score @s PassiveSkill3 matches 3.. run scoreboard players add @s MaxShield 3