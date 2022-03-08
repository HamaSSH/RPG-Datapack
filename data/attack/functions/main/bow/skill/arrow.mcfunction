# 溜め攻撃弓矢としての#tick
  execute if entity @s[tag=ArrowSkill1] positioned ~ ~-1000 ~ run function attack:main/bow/skill/1/tick
  execute if entity @s[tag=ArrowSkill2] run function attack:main/bow/skill/2/tick
  execute if entity @s[tag=ArrowMeteor] if predicate attack:meteor_land run function attack:main/bow/skill/2/meteor/land