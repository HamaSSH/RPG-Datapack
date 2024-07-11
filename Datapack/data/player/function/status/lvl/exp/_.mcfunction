#> player:status/lvl/exp/_
# EXP取得処理

# 職業XP保存
    execute if predicate player:class/is_rogue run scoreboard players operation @s RogueEXP += @s EXPGained
    execute if predicate player:class/is_fighter run scoreboard players operation @s FighterEXP += @s EXPGained
    execute if predicate player:class/is_paladin run scoreboard players operation @s PaladinEXP += @s EXPGained
    execute if predicate player:class/is_wizard run scoreboard players operation @s WizardEXP += @s EXPGained

# EXP加算処理
    scoreboard players operation @s EXP += @s EXPGained
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_

# 演出
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1.5

# リセット
    scoreboard players reset @s EXPGained