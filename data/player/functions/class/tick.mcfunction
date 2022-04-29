# 職業ごとの#tick
    execute if entity @s[team=Assassin] run function player:class/assassin/_
    execute if entity @s[team=Fighter] run function player:class/fighter/_
    execute if entity @s[team=Knight] run function player:class/knight/_
    execute if entity @s[team=Warrior] run function player:class/warrior/_

    scoreboard players operation assassin status = @s lv_assassin
        scoreboard players operation assassinXP status = @s xp_assassin
    scoreboard players operation fighter status = @s lv_fighter
        scoreboard players operation fighterXP status = @s xp_fighter
    scoreboard players operation knight status = @s lv_knight
        scoreboard players operation knightXP status = @s xp_knight
    scoreboard players operation warrior status = @s lv_warrior
        scoreboard players operation warriorXP status = @s xp_warrior
    scoreboard players operation wizard status = @s lv_wizard
        scoreboard players operation wizardXP status = @s xp_wizard
    scoreboard players operation hunter status = @s lv_hunter
        scoreboard players operation hunterXP status = @s xp_hunter
