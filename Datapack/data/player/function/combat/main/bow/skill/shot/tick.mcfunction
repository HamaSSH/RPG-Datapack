#> player:combat/main/bow/skill/shot/tick
# ため攻撃矢の常時実行

data modify entity @s PierceLevel set value 5

# データをスコアに格納
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute positioned ~-1.5 ~-1.5 ~-1.5 if entity @e[type=#lib:every_mob,tag=Enemy,dx=2,dy=2,dz=2] run tag @s add Attacker
    execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=#lib:every_mob,tag=Enemy,dx=2,dy=2,dz=2] run function mob:hitbox

# HIT処理
    scoreboard players set $MotionPower Temporary 200
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] at @s facing entity @e[type=arrow,tag=Attacker,sort=nearest,limit=1] feet rotated ~180 70 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/bow/skill/hit

# 演出
    function player:combat/main/bow/skill/shot/sfx/_

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    tag @s remove Attacker

# 着弾したら一定時間後消滅
    execute if data entity @s {inGround:1b} run scoreboard players set @s Timer 0