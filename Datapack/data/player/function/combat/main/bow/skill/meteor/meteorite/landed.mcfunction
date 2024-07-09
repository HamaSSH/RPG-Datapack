#> player:combat/main/bow/skill/meteor/meteorite/landed
# ため攻撃隕石矢着弾時の処理

# データをスコアに格納
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt

# 当たり判定
    execute if entity @e[type=#lib:every_mob,tag=Enemy,distance=..2] run tag @s add Attacker
    execute as @e[type=#lib:every_mob,tag=Enemy,distance=..2] run function mob:hitbox

# HIT処理
    scoreboard players set $MotionPower Temporary 100
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] at @s facing entity @e[type=arrow,tag=Attacker,sort=nearest,limit=1] eyes rotated ~180 70 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..6] run function player:combat/main/bow/skill/hit

# 演出
    function player:combat/main/bow/skill/meteor/meteorite/sfx/_

# リセット
    scoreboard players reset $PlayerID Temporary
    scoreboard players reset $DmgDealt Temporary
    tag @s remove Attacker

# 消滅
    tag @s add Timer
    scoreboard players set @s Timer 0