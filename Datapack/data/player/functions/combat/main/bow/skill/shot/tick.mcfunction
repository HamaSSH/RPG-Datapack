#> player:combat/main/bow/skill/shot/tick
# ため攻撃矢の常時実行

data modify entity @s PierceLevel set value 5

# データをスコアに格納
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-1.5 ~-1.5 ~-1.5 if entity @e[type=#lib:every_mob,tag=Enemy,dx=2,dy=2,dz=2] run tag @s add Attacker
    execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=#lib:every_mob,tag=Enemy,dx=2,dy=2,dz=2] run tag @s add Hit

# HIT処理
    scoreboard players set $MotionPower Temporary 200
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] facing entity @e[type=arrow,tag=Attacker] eyes rotated ~ 70 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/bow/skill/hit

# 演出
    particle explosion ~ ~ ~ 1.2 1.2 1.2 1 2 force
    particle crit ~ ~ ~ 0.1 0.1 0.1 0 10 force
    particle dust_color_transition 1 0.804 0.169 2 1 0.125 0.023 ~ ~ ~ 1 1 1 0.01 10 force
    particle dust_color_transition 1 0.859 0.392 2 1 0.494 0.153 ~ ~ ~ 1 1 1 0.01 10 force
    particle flame ~ ~ ~ 1 1 1 0.02 15 force

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    tag @s remove Attacker

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run scoreboard players set @s Timer 0