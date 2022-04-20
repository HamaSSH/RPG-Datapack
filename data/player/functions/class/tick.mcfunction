# 職業ごとの#tick
    execute if entity @s[team=Assassin] run function player:class/assassin/_
    execute if entity @s[team=Fighter] run function player:class/fighter/_
    execute if entity @s[team=Knight] run function player:class/knight/_
    execute if entity @s[team=Warrior] run function player:class/warrior/_
    #homing execute if entity @s[team=Wizard] run function player:class/wizard/_

    scoreboard players operation AD status = @s ad
    scoreboard players operation SPD status = @s spd
    scoreboard players operation Assassin status = @s assassin_crt