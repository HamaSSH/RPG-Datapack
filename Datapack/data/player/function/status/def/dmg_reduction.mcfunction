#> player:status/def/dmg_reduction
# プレイヤーの防御力によるダメージ軽減計算

# 防御計算式 → DmgReceived = 600 * DmgReceived / (600 + DEF) - DEF * DmgReceived / 4000
        scoreboard players operation $PlayerDEF Temporary = @s DEF
    # - DEF * DmgReceived / 4000
        scoreboard players operation $DmgReceived2 Temporary = @s DmgReceived
        scoreboard players operation $DmgReceived2 Temporary *= $PlayerDEF Temporary
        scoreboard players operation $DmgReceived2 Temporary /= #40 Constant
    # 600 * DmgReceived / (600 + DEF)
        scoreboard players operation $DmgReceived Temporary = @s DmgReceived
        scoreboard players add $PlayerDEF Temporary 600
        scoreboard players operation $DmgReceived Temporary *= #60000 Constant
        scoreboard players operation $DmgReceived Temporary /= $PlayerDEF Temporary
    # 四捨五入して被ダメージに代入
        scoreboard players operation $DmgReceived Temporary -= $DmgReceived2 Temporary
        scoreboard players add $DmgReceived Temporary 50
        scoreboard players operation $DmgReceived Temporary /= #100 Constant
        scoreboard players operation @s DmgReceived = $DmgReceived Temporary

# リセット
    scoreboard players reset $PlayerDEF Temporary
    scoreboard players reset $DmgReceived Temporary
    scoreboard players reset $DmgReceived2 Temporary