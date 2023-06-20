##########
#>
#

# 職業ごとの#tick
    execute if entity @s[team=Assassin] run function player:class/assassin/tick
    execute if entity @s[team=Fighter] run function player:class/fighter/tick
    execute if entity @s[team=Knight] run function player:class/knight/tick
    execute if entity @s[team=Warrior] run function player:class/warrior/tick