#> mob:manager/autokill_timer
# 一定時間で表示用エンティティを片付ける

# 死亡モーションを出さないようにtpしてから消すやら
    scoreboard players remove @s Timer 1
    execute if score @s Timer matches ..0 run tp @s ~ -1000 ~
    execute if score @s Timer matches ..0 run kill @s