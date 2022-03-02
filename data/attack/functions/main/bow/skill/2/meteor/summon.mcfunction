# メテオライト弓矢
  summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
  summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
  summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
  summon arrow ~ ~ ~ {Tags:["ArrowInit","Arrow"]}
# 初期処理
  execute at @a if score @s PlayerID = @p PlayerID run tag @p add this
  execute as @e[type=arrow,tag=ArrowInit,distance=..0] run function attack:main/bow/skill/2/meteor/init
  execute at @a if score @s PlayerID = @p PlayerID run tag @p remove this