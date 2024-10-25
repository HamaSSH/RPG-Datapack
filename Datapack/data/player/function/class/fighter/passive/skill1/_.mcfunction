#> player:class/fighter/passive/skill1/_
# スキルレベルごとの効果

# ノックバック耐性 I=0.75倍｜II=0.5倍｜III=0.25倍｜IV=0倍
    scoreboard players operation $KnockBackRes Temporary = @s PassiveSkill1
    scoreboard players operation $KnockBackRes Temporary *= #250 Constant
    scoreboard players operation @s KnockBackRes += $KnockBackRes Temporary

# 落下ダメージ耐性 I=0.75倍｜II=0.5倍｜III=0.25倍｜IV=0倍
    scoreboard players operation $FallDamageRes Temporary = @s PassiveSkill1
    scoreboard players operation $FallDamageRes Temporary *= #250 Constant
    scoreboard players operation @s FallDamageRes += $FallDamageRes Temporary

# リセット
    scoreboard players reset $KnockBackRes Temporary
    scoreboard players reset $FallDamageRes Temporary