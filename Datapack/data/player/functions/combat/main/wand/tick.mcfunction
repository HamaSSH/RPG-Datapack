#> player:combat/main/wand/tick
# 杖の弾のtick処理

# 移動
    tp @s ^ ^ ^1
    execute unless block ^ ^ ^ #lib:no_collision run kill @s
    execute unless block ^ ^ ^0.5 #lib:no_collision run kill @s

# 演出
    particle witch ~ ~ ~ 0.03 0.03 0.03 0 1 force
    particle witch ^ ^ ^0.5 0.03 0.03 0.03 0 1 force