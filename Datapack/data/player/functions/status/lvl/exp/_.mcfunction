#> player:status/lvl/exp/_
# EXP取得処理

# 職業XP保存
    # execute if predicate player:class/is_assassin run scoreboard players operation @s AssassinXP += @s EXPGained
    # execute if predicate player:class/is_fighter run scoreboard players operation @s FighterXP += @s EXPGained
    # execute if predicate player:class/is_knight run scoreboard players operation @s KnightXP += @s EXPGained
    # execute if predicate player:class/is_warrior run scoreboard players operation @s WarriorXP += @s EXPGained
    # execute if predicate player:class/is_wizard run scoreboard players operation @s WizardXP += @s EXPGained
    # execute if predicate player:class/is_hunter run scoreboard players operation @s HunterXP += @s EXPGained

# EXP加算処理
    scoreboard players operation @s EXP += @s EXPGained
    execute if score @s EXP >= @s NextEXP run function player:status/lvl/up/_

# 演出
    particle minecraft:totem_of_undying ~ ~ ~ 0.1 0.2 0.1 0.5 100 force
    playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1.5

# リセット
    scoreboard players reset @s EXPGained