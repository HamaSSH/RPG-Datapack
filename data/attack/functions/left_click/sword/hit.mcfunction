# Hitタグのついたエンティティへの攻撃
  function attack:left_click/hit
# Hitタグのついたエンティティの左右も攻撃
  execute at @s as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..1.5,sort=nearest,limit=1] run function attack:left_click/hit