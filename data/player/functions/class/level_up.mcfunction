# スキルレベルアップ
  scoreboard players add @s skill_level 1
# 職業ごとのスキルレベルアップ時の処理
  execute if entity @s[team=Warrior] run function player:class/warrior/on_levelup