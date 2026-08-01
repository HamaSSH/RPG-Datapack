#> mob:manager/tick
# 表示用エンティティの管理タグによる処理

# Timerタグを持ったやつらの処理
    execute if entity @s[tag=Timer] run function mob:manager/autokill_timer
