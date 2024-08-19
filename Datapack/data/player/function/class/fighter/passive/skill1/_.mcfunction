#> player:class/fighter/passive/skill1/_
# スキルレベルごとの効果

# ノックバック耐性 I=0.75倍｜II=0.5倍｜III=0.25倍｜IV=0倍
    scoreboard players operation $KnockbackRes Temporary = @s PassiveSkill1
    scoreboard players operation $KnockbackRes Temporary *= #250 Constant
    scoreboard players operation @s KBR += $KnockbackRes Temporary

# 落下ダメージ耐性 I=0.75倍｜II=0.5倍｜III=0.25倍｜IV=0倍
    scoreboard players operation $FallDamageRes Temporary = @s PassiveSkill1
    scoreboard players operation $FallDamageRes Temporary *= #250 Constant
    scoreboard players operation @s FDR += $FallDamageRes Temporary

# リセット
    scoreboard players reset $KnockbackRes Temporary
    scoreboard players reset $FallDamageRes Temporary