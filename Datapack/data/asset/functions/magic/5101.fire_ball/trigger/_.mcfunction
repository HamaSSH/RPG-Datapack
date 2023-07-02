#> asset:magic/5101.fire_ball/trigger/_
# 魔法発動時の処理

# プレイヤー用tickの始動
    scoreboard players add @s 5101.Tick 0
# 魔法の弾の召喚
    summon area_effect_cloud ~ ~ ~ {Tags:["Magic","MagicInit"],Duration:20}
    execute as @e[type=area_effect_cloud,tag=MagicInit,distance=..0.01,limit=1] run function asset:magic/5101.fire_ball/trigger/init
# 演出
    particle flame ^ ^0.5 ^0.3 0.1 0.3 0.1 0.04 5 force
    playsound item.firecharge.use master @a ~ ~ ~ 0.8 1.4