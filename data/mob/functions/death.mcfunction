# 死亡アニメーション時の見た目調整
  data modify entity @s CustomName set value '{"text":"██████████","color":"dark_gray"}'
  #execute unless entity @s[tag=CustomModelHurt] run function mob:custom_model/hurt
  execute if entity @s[type=slime] run data modify entity @s Size set value 0
  kill @s