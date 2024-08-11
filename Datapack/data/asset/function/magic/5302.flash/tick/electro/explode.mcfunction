#> asset:magic/5302.flash/tick/electro/exolode
# ビリビリ1つ1つの処理

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-1 ~-1 ~-1 if entity @e[type=#lib:every_mob,tag=Enemy,dx=1,dy=1,dz=1,limit=1] run function asset:magic/5302.flash/tick/detected

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] at @s run function asset:magic/5302.flash/tick/hit/_

# 演出
    particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.9],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 3 force
    particle dust_color_transition{from_color:[0.992,1.0,0.62],to_color:[1.0,0.941,0.9],scale:1} ^ ^ ^1 0.2 0.2 0.2 0 3 force
    particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
    playsound block.pumpkin.carve master @a ~ ~ ~ 0.1 1.5
    playsound entity.firework_rocket.twinkle_far master @a ~ ~ ~ 0.05 1.7

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary