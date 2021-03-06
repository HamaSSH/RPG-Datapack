# 幸運ステータス補正
    execute if score @s luk matches 1.. run function player:status/luk/xp_boost
    playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1.5
# 職業XP保存
    execute if entity @s[team=Assassin] run scoreboard players operation @s xp_assassin += @s xp_gained
    execute if entity @s[team=Fighter] run scoreboard players operation @s xp_fighter += @s xp_gained
    execute if entity @s[team=Knight] run scoreboard players operation @s xp_knight += @s xp_gained
    execute if entity @s[team=Warrior] run scoreboard players operation @s xp_warrior += @s xp_gained
    execute if entity @s[team=Wizard] run scoreboard players operation @s xp_wizard += @s xp_gained
    execute if entity @s[team=Hunter] run scoreboard players operation @s xp_hunter += @s xp_gained
# XP加算処理
    scoreboard players operation @s xp += @s xp_gained
    execute if score @s xp >= @s xp_next run function player:status/level/up
# リセット
    scoreboard players reset @s xp_gained