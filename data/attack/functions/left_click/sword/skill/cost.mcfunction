# MPコスト
  scoreboard players set $MPCost Temporary 30
  function player:status/mp/check/_
  execute if entity @s[tag=MPCheck] run function attack:left_click/sword/skill/init
# リセット
  tag @s remove MPCheck
  scoreboard players reset $MPCost