# 神速切り (攻撃速度上昇、短剣装備時のみ)
  execute if predicate attack:mainhand/dagger run attribute @s minecraft:generic.attack_speed modifier add 1-0-0-1-0 "DaggerSkill" 100 add
  execute unless predicate attack:mainhand/dagger run attribute @s minecraft:generic.attack_speed modifier remove 1-0-0-1-0
  execute if score @s skill_cd matches 220 run attribute @s minecraft:generic.attack_speed modifier remove 1-0-0-1-0
  execute if score @s skill_cd matches 220 run tag @s remove DaggerTick