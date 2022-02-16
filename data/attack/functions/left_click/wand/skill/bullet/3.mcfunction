# スキル使用者のタグ付け
  tag @s add this
# 属性ごとの弾
  execute if entity @s[tag=FireWandSkill] run function magic:asset/4102.homing_fire/_
  execute if entity @s[tag=WaterWandSkill] run function magic:asset/4103.homing_water/_
  execute if entity @s[tag=NeutralWandSkill] run function magic:asset/4104.homing_thunder/_
  execute if entity @s[tag=ThunderWandSkill] run function magic:asset/4104.homing_thunder/_
  execute if entity @s[tag=EarthWandSkill] run function magic:asset/4105.homing_earth/_
  execute if entity @s[tag=WindWandSkill] run function magic:asset/4106.homing_wind/_
# リセット
  tag @s remove this