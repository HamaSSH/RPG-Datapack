# 属性ごとの攻撃
  execute if entity @e[type=arrow,tag=this,tag=FireAttack,limit=1] run function mob:on_hurt/element/fire
  execute if entity @e[type=arrow,tag=this,tag=WaterAttack,limit=1] run function mob:on_hurt/element/water
  execute if entity @e[type=arrow,tag=this,tag=ThunderAttack,limit=1] run function mob:on_hurt/element/thunder
  execute if entity @e[type=arrow,tag=this,tag=EarthAttack,limit=1] run function mob:on_hurt/element/earth
  execute if entity @e[type=arrow,tag=this,tag=WindAttack,limit=1] run function mob:on_hurt/element/wind
# Hit処理
  function attack:main/hit