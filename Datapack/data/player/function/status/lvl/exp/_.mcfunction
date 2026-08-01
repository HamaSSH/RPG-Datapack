#> player:status/lvl/exp/_
# EXP取得処理

# TODO:
    # 職業別EXP保存: HunterEXP/FighterEXP/PaladinEXP/WizardEXP

# EXP加算処理
    scoreboard players operation @s EXP += @s EXPGained
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_

# 演出
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1.5

# リセット
    scoreboard players reset @s EXPGained
