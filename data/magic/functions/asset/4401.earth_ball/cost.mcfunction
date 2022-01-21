# MPコスト
  function player:status/mp/check/_
  execute if entity @s[tag=MPCheck] run function magic:asset/4401.earth_ball/_
# リセット
  tag @s remove MPCheck
  scoreboard players reset $MPCost