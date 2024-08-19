#> player:class/fighter/passive/skill1/_
# スキルレベルごとの効果

# ノックバック耐性
    scoreboard players operation $KnockbackRes Temporary = @s PassiveSkill1
    scoreboard players operation $KnockbackRes Temporary *= #250 Constant
    scoreboard players operation @s KBR += $KnockbackRes Temporary

# 落下ダメージ耐性
    scoreboard players operation $FallDamageRes Temporary = @s PassiveSkill1
    scoreboard players operation $FallDamageRes Temporary *= #250 Constant
    scoreboard players operation @s FDR += $FallDamageRes Temporary