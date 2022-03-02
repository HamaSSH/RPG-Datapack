# 弓矢の#tick
  execute if data entity @s {inGround:0b} run function attack:main/bow/arrow/particle/_
  execute if entity @s[tag=!ArrowLand] if data entity @s {inGround:1b} run function attack:main/bow/arrow/land
  execute if entity @s[tag=ArrowLand] if data entity @s {inGround:1b,PortalCooldown:0} run function attack:main/bow/arrow/kill
# 溜め攻撃弓矢の#tick
  execute if entity @s[tag=ArrowSkill1] positioned ~ ~-1000 ~ run function attack:main/bow/skill/1/tick
  execute if entity @s[tag=ArrowSkill2] run function attack:main/bow/skill/2/tick
  execute if entity @s[tag=ArrowMeteor] if predicate attack:meteor_land run function attack:main/bow/skill/2/meteor/land