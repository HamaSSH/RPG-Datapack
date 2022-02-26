# Hitタグのついたエンティティへの攻撃
  function attack:main/hit
# Hitタグのついたエンティティの左右も攻撃
  execute at @s as @e[type=#mob:mobs,tag=Enemy,tag=!HurtTime,distance=..1.5,sort=nearest,limit=1] run function attack:main/hit