# PreviousHP
  scoreboard players operation $PreviousHP Temporary = @s PreviousHP
# 職業ごとの#tick
  #crit execute if entity @s[team=Assassin] run function player:class/assassin/_
  # execute if entity @s[team=Fighter] run function player:class/fighter/_
  #hp execute if entity @s[team=Knight] run function player:class/knight/_
  #on_change execute if entity @s[team=Warrior] run function player:class/warrior/_
  #on_change execute if entity @s[team=Wizard] run function player:class/wizard/_
  # execute if entity @s[team=Hunter] run function player:class/hunter/_
# リセット
  scoreboard players reset $PreviousHP