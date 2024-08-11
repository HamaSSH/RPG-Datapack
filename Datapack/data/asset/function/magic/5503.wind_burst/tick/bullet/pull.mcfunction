#> asset:magic/5503.wind_burst/tick/bullet/pull
# 弾の敵引き込み処理

execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=#lib:every_mob,tag=Enemy,dx=4,dy=4,dz=4] at @s facing entity @n[tag=5503.BurstBullet,distance=..6] eyes run tp @s ^ ^ ^0.4