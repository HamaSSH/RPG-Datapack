#> asset:magic/5303.spark_bolt/trigger/_
# 魔法発動時の処理

# 電撃1を伸ばし始める
    execute anchored eyes run function asset:magic/5303.spark_bolt/trigger/branch/1/start

# HIT処理
    scoreboard players operation $DmgDealt Temporary = @s DmgDealt
    scoreboard players operation $PlayerID Temporary = @s PlayerID
    execute positioned ^ ^ ^7.5 as @e[type=#lib:every_mob,tag=Enemy,tag=Hit,distance=..15] at @s run function asset:magic/5303.spark_bolt/trigger/hit/_

# 演出
    playsound entity.shulker.shoot master @a ~ ~ ~ 1.0 1.9
    playsound block.pumpkin.carve master @a ~ ~ ~ 0.2 1.5
    playsound entity.firework_rocket.twinkle_far master @a ~ ~ ~ 0.3 1.5

# リセット
    scoreboard players reset $DmgDealt Temporary
    scoreboard players reset $PlayerID Temporary