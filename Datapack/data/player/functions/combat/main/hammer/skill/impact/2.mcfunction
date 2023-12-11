#> player:combat/main/hammer/skill/impact/2
# ハンマーのため攻撃

tag @s add Attacker
# ダメージ
    function player:combat/player_attacked/dmg_dealt
    scoreboard players operation @s DmgDealt /= #10 Constant
    scoreboard players add @s DmgDealt 5
    scoreboard players operation @s DmgDealt *= #4 Constant
    function player:status/crt/chance

# HIT処理
    scoreboard players set $MotionPower Temporary 300
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,distance=..4.5] rotated ~ 70 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,distance=..4.5] run function player:combat/main/hit

# 演出
    particle explosion ~ ~ ~ 1.2 0.6 1.2 0 15 force
    playsound resource:custom.hammer player @a ~ ~ ~ 0.4 1.0
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.7 0.7

# リセット
    tag @s remove Attacker
    tag @s remove CriticalHit