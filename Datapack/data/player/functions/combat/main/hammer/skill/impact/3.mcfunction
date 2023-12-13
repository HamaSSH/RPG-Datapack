#> player:combat/main/hammer/skill/impact/3
# ハンマーのため攻撃

tag @s add Attacker
# ダメージ
    function player:combat/player_attacked/dmg_dealt
    scoreboard players operation @s DmgDealt /= #10 Constant
    scoreboard players add @s DmgDealt 5
    scoreboard players operation @s DmgDealt *= #5 Constant
    function player:status/crt/chance

# HIT処理
    scoreboard players set $MotionPower Temporary 400
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,distance=..6] rotated ~ 80 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=!HurtTime,distance=..6] run function player:combat/main/hit

# 演出
    data modify storage player: SFX set value {size:"2.5",count:"50"}
    function player:combat/main/hammer/skill/impact/sfx/_
    particle explosion ~ ~ ~ 2.5 0.6 2.5 0 20 force
    playsound resource:custom.hammer player @a ~ ~ ~ 0.4 1.1
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.5 0.8

# リセット
    tag @s remove Attacker
    tag @s remove CriticalHit
    data remove storage player: SFX