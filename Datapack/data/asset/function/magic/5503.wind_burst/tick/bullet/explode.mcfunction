#> asset:magic/5503.wind_burst/tick/bullet/explode
# 弾の爆発処理

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-2.5 ~-2.5 ~-2.5 if entity @e[type=#lib:every_mob,tag=Enemy,dx=4,dy=4,dz=4,limit=1] run function asset:magic/5503.wind_burst/tick/detected

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] at @s run function asset:magic/5503.wind_burst/tick/hit/_

# 演出
    particle dust_color_transition{from_color:[0.478,0.784,0.275],to_color:[0.91,1.0,0.88],scale:3} ~ ~ ~ 0.7 0.7 0.7 0 70 force
    particle dust_color_transition{from_color:[0.725,1.0,0.506],to_color:[0.91,1.0,0.88],scale:2} ~ ~ ~ 0.7 0.7 0.7 0 50 force
    particle gust ~ ~ ~ 1 1 1 0 20
    playsound entity.generic.explode master @a ~ ~ ~ 0.4 1.1
    playsound entity.generic.explode master @a ~ ~ ~ 0.7 0.6
    playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 0.8 0.8
    playsound entity.breeze.wind_burst master @a ~ ~ ~ 0.8 1.2

# 後処理
    kill @s

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary