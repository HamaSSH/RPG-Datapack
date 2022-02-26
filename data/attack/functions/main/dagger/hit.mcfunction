# もし溜め攻撃中であればHurtTime無視
  execute if entity @a[tag=this,tag=DaggerTick,limit=1] unless score @s HurtTime matches 8.. run function attack:main/hit
  execute if entity @a[tag=this,tag=!DaggerTick,limit=1] if entity @s[tag=!HurtTime] run function attack:main/hit