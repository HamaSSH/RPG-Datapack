#> asset:magic/5502.swift/trigger/_
# 魔法発動時の処理

# プレイヤー用tickの始動
    scoreboard players add @s 5502.Tick 0

# TODO: 素早さバフ
    effect give @s speed 10 1 true

# 演出
    playsound item.trident.riptide_3 master @a ~ ~ ~ 0.4 1.4