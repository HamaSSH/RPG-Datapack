# 弓矢の#tick
  execute as @e[type=arrow] run data modify entity @s PierceLevel set value 5b
  execute if data entity @s {inGround:0b} run function attack:main/bow/arrow/particle/_
  execute if entity @s[tag=!ArrowLand] if data entity @s {inGround:1b} run function attack:main/bow/arrow/land
  execute if entity @s[tag=ArrowLand] if data entity @s {inGround:1b,PortalCooldown:0} run function attack:main/bow/arrow/kill
# 溜め攻撃弓矢としての#tick
  function attack:main/bow/skill/arrow