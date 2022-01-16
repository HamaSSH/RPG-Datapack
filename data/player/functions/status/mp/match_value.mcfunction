# MPの値に応じてXPBARの値も増減
  execute store result score @s XPValue run xp query @s levels
  execute if score @s XPValue > @s mp run xp add @s -1 levels
  execute if score @s XPValue < @s mp run xp add @s 1 levels
# 1以上離れていた場合再帰
  execute unless score @s XPValue = @s mp run function player:status/mp/match_value