#> player:class/fighter/passive/skill4/_
# スキルレベルごとの効果

# 防御力に応じて物理攻撃力補正 I=0.05倍｜II=0.1倍｜III=0.15倍｜IV=0.2倍
    scoreboard players operation $ClassSTR Temporary = @s DEF
    scoreboard players operation $ClassSTR Temporary *= @s PassiveSkill4
    scoreboard players operation $ClassSTR Temporary /= #20 Constant
    scoreboard players operation @s STR += $ClassSTR Temporary
    # tellraw @a {"score": {"name": "$ClassSTR","objective": "Temporary"}}

# リセット
    scoreboard players reset $ClassSTR Temporary