#> asset:magic/5103.flame_pillar/tick/pillar/explode
# フレイムピラー爆発

# 魔法発動したプレイヤーとその威力
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-1.2 ~-0.5 ~-1.2 if entity @e[type=#lib:every_mob,tag=Enemy,dx=1.4,dy=3,dz=1.4,limit=1] run function asset:magic/5103.flame_pillar/tick/detected

# HIT処理
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] at @s run function asset:magic/5103.flame_pillar/tick/hit/_

# 演出
    particle dust_color_transition{from_color:[1.0,0.804,0.169],to_color:[1.0,0.125,0.023],scale:2} ~ ~1 ~ 0.1 0.8 0.1 0 20 force
    particle dust_color_transition{from_color:[1.0,0.859,0.392],to_color:[1.0,0.494,0.153],scale:1.5} ~ ~1 ~ 0.2 0.7 0.2 0 24 force
    particle flame ~ ~1 ~ 0.1 1 0.1 0.01 30 force
    particle explosion ~ ~0.2 ~ 0.1 0.5 0.1 0 5 force
    playsound entity.generic.explode master @a ~ ~ ~ 0.2 0.8
    playsound resource:custom.firecharge.use master @a ~ ~ ~ 0.4 1.2

# 後処理
    kill @s

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary