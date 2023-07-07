#> asset:magic/5100.example/trigger/_
# 魔法発動時の処理

# プレイヤー用tickの始動
    scoreboard players add @s 5100.Tick 0

# 魔法の弾の召喚
    execute summon armor_stand run function asset:magic/5100.example/trigger/init

# 演出
    tellraw @s {"text":"ファイアーボール！"}
    particle flame ^ ^0.5 ^0.3 0.1 0.3 0.1 0.04 5 force
    playsound item.firecharge.use master @a ~ ~ ~ 0.8 1.4