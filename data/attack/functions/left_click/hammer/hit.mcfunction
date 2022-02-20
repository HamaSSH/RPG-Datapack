# Hitタグのついたエンティティの周囲も攻撃
  execute at @s as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,tag=!Hit,distance=..2,sort=nearest,limit=5] run function attack:left_click/hit
# Hitタグのついたエンティティへの攻撃
  function attack:left_click/hit