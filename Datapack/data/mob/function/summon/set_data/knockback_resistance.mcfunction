#> mob:summon/set_data/knockback_resistance
# ノックバック耐性(knockback_resistance)を設定

# KBRを取得
    execute store result score $KnockbackRes Temporary run data get storage asset:mob Data.Status.KBR

# 補正値(%)に基づいて計算
    scoreboard players operation $KnockbackRes Temporary *= #50 Constant
    scoreboard players add $KnockbackRes Temporary 5000

# knockback_resistanceに代入
    execute store result entity @s attributes[{id:"knockback_resistance"}].base double 0.0001 run scoreboard players get $KnockbackRes Temporary

# リセット
    scoreboard players reset $KnockbackRes