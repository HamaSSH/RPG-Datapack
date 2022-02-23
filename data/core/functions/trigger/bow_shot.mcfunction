# 矢筒を持っていたらスコア減算
  function item:quiver/check
  execute if entity @s[tag=Quiver] run scoreboard players remove @s Arrow 1
  tag @s remove Quiver
# 溜め攻撃バーのリセット
  function core:trigger/sneak/reset
# リセット
  scoreboard players reset @s bow_shot