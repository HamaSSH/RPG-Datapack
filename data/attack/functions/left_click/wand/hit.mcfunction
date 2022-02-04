# 属性ごとの攻撃
  execute if entity @e[type=area_effect_cloud,tag=FireAttack,distance=..3,limit=1] run function mob:on_hurt/element/fire
  execute if entity @e[type=area_effect_cloud,tag=WaterAttack,distance=..3,limit=1] run function mob:on_hurt/element/water
  execute if entity @e[type=area_effect_cloud,tag=ThunderAttack,distance=..3,limit=1] run function mob:on_hurt/element/thunder
  execute if entity @e[type=area_effect_cloud,tag=EarthAttack,distance=..3,limit=1] run function mob:on_hurt/element/earth
  execute if entity @e[type=area_effect_cloud,tag=WindAttack,distance=..3,limit=1] run function mob:on_hurt/element/wind
# Hit処理
  function attack:left_click/hit