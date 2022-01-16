# sneakリセット
  execute unless predicate core:is_sneaking run function core:trigger/sneak/reset
  execute if score @s skill_cd matches 1.. run scoreboard players reset @s sneak
# 溜め攻撃(30tick)
  execute if score @s sneak matches 30 run function attack:left_click/skill_ready