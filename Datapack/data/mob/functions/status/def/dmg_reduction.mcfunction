#> mob:status/def/dmg_reduction
# モブの防御力によるダメージ軽減計算

# 防御計算式 → DmgReceived = DmgReceived * (100 - DEF)
    scoreboard players set $MobDEF Temporary 100
    scoreboard players operation $MobDEF Temporary -= @s DEF
    # 小数点第一位四捨五入
        scoreboard players operation @s DmgReceived *= $MobDEF Temporary
        scoreboard players add @s DmgReceived 50
        scoreboard players operation @s DmgReceived /= #100 Constant

# リセット
    scoreboard players reset $MobDEF Temporary