#> asset:magic/5402.recall/trigger/_
# 魔法発動時の処理

# プレイヤー用tickの始動
    scoreboard players add @s 5402.Tick 0

# 動かないで！
    tellraw @s "─ 5秒後にテレポートします... (移動でキャンセル)\n"

# 演出
    playsound block.beacon.power_select master @a ~ ~ ~ 0.1 0.9