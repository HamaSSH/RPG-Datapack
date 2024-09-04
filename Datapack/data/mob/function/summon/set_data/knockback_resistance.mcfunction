#> mob:summon/set_data/knockback_resistance
# ノックバック耐性(generic.knockback_resistance)を設定

# KBRを取得
    execute store result score $KnockbackRes Temporary run data get storage asset:mob Data.Status.KBR

# 補正値(%)に基づいて計算
    scoreboard players operation $KnockbackRes Temporary *= #50 Constant
    scoreboard players add $KnockbackRes Temporary 5000

# generic.knockback_resistanceに代入
    execute store result entity @s attributes[{id:"generic.knockback_resistance"}].base double 0.0001 run scoreboard players get $KnockbackRes Temporary

# リセット
    scoreboard players reset $KnockbackRes