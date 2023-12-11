#> player:combat/main/hammer/skill/impact/1
# ハンマーのため攻撃

tag @s add Attacker
# ダメージ
    function player:combat/player_attacked/dmg_dealt
    scoreboard players operation @s DmgDealt /= #10 Constant
    scoreboard players add @s DmgDealt 5
    scoreboard players operation @s DmgDealt *= #3 Constant
    function player:status/crt/chance

# HIT処理
    scoreboard players set $MotionPower Temporary 200
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,distance=..3] rotated ~ 60 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,distance=..3] run function player:combat/main/hit

# 演出
    particle explosion ~ ~ ~ 0.7 0.6 0.7 0 8 force
    playsound resource:custom.hammer player @a ~ ~ ~ 0.4 0.9
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.7 0.6

# リセット
    tag @s remove Attacker
    tag @s remove CriticalHit