#> player:combat/main/hammer/skill/_
# ハンマーのため攻撃

tag @s add Attacker
# ダメージ
    scoreboard players operation @s DmgDealt = @s STR
    scoreboard players add @s DmgDealt 5
    scoreboard players operation @s DmgDealt *= #5 Constant
    function player:status/crt/chance

# HIT処理
    scoreboard players set $MotionPower Temporary 300
    execute as @e[type=#lib:every_mob,tag=Enemy,distance=..6] rotated ~ 70 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,distance=..6] run function player:combat/main/hit

# 演出
    particle explosion ~ ~ ~ 2.5 0.4 2.5 0 20 force
    playsound resource:custom.hammer player @a ~ ~ ~ 0.4 1.0
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.7 0.7

# リセット
    tag @s remove Attacker
    tag @s remove CriticalHit