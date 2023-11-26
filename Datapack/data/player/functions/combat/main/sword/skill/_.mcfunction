#> player:combat/main/sword/skill/_
# 刀剣のため攻撃

tag @s add Attacker
# 当たり判定
    execute anchored eyes positioned ^ ^ ^ run function player:combat/main/sword/skill/rec

# ダメージ
    function player:combat/player_attacked/dmg_dealt
    scoreboard players operation @s DmgDealt /= #10 Constant
    scoreboard players add @s DmgDealt 5
    scoreboard players operation @s DmgDealt *= #5 Constant
    function player:status/crt/chance

# HIT処理
    scoreboard players set $MotionPower Temporary 150
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..10] rotated ~ 60 run function lib:motion/knockback
    execute as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..10] run function player:combat/main/hit

# 演出
    particle sweep_attack ^ ^1.0 ^1.5 0.15 0.15 0.15 1 1 force
    playsound resource:custom.weapon.sword master @a ~ ~ ~ 0.4 1.0

# 回転
    tp @s ~ ~ ~ ~45 ~

# リセット
    tag @s remove Attacker
    tag @s remove CriticalHit