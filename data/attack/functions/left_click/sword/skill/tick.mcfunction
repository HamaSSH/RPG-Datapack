# 回転切り
  execute if score @s skill_cd matches 291..300 run function attack:left_click/sword/skill/_
  execute if score @s skill_cd matches 291..300 run function attack:left_click/sword/skill/effect/_
  execute if score @s skill_cd matches 292..299 run tp @s ~ ~ ~ ~45 ~
  execute if score @s skill_cd matches 292 run function attack:left_click/sword/skill/reset