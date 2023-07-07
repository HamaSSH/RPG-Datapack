#> player:status/def/dmg_reduction
# プレイヤーの防御力によるダメージ軽減計算

# 防御計算式 → DmgReceived = DmgReceived / 1 + (DEF / 200)
    # = 200 * DmgReceived / (200 + DEF)
        scoreboard players operation $PlayerDEF Temporary = @s DEF
        scoreboard players add $PlayerDEF Temporary 200
    # 小数点第一位四捨五入
        scoreboard players operation @s DmgReceived *= #2000 Constant
        scoreboard players operation @s DmgReceived /= $PlayerDEF Temporary
        scoreboard players add @s DmgReceived 5
        scoreboard players operation @s DmgReceived /= #10 Constant

# リセット
    scoreboard players reset $PlayerDEF Temporary