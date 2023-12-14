#> player:combat/main/spear/skill/_
# 槍のため攻撃

tag @s add Attacker
# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/spear/skill/rec

# ダメージ
    scoreboard players operation @s DmgDealt = @s STR
    scoreboard players add @s DmgDealt 5
    scoreboard players operation @s DmgDealt *= #5 Constant
    function player:status/crt/chance

# HIT処理
    scoreboard players set $MotionPower Temporary 300
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..10] rotated ~ 75 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..10] run function player:combat/main/hit

# 演出
    function player:combat/main/spear/sfx/_
    execute positioned ^ ^ ^2 run function player:combat/main/spear/sfx/_
    particle crit ^ ^1.7 ^2 0.7 0.5 0.7 0.2 15 force
    particle crit ^ ^1.7 ^3.5 0.7 0.5 0.7 0.2 15 force
    particle crit ^ ^1.7 ^5 0.7 0.5 0.7 0.2 15 force
    particle sweep_attack ^ ^0.8 ^2 0.7 0.5 0.7 0 7 force
    particle sweep_attack ^ ^0.8 ^3.5 0.7 0.5 0.7 0 7 force
    particle sweep_attack ^ ^0.8 ^5 0.7 0.5 0.7 0 7 force
    playsound item.trident.thunder master @a ~ ~ ~ 0.05 2.0
    playsound item.trident.riptide_1 master @a ~ ~ ~ 0.7 1.1
    playsound resource:custom.weapon.spear master @a ~ ~ ~ 1.0 1.0

# リセット
    tag @s remove Attacker
    tag @s remove CriticalHit