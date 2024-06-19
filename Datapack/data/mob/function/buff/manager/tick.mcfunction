#> mob:buff/manager/tick
# バフ管理マーカーのtick処理

# バフのデータ→ストレージ
    data modify storage mob: buff set from entity @s data.buff

# Timerを値を減らす
    execute store result score $Timer Temporary run data get storage mob: buff.timer
    execute store result storage mob: buff.timer int 1 run scoreboard players remove $Timer Temporary 1
    scoreboard players reset $Timer Temporary

# ストレージ→マーカーのdata
    data modify entity @s data.buff set from storage mob: buff

# Timer:0になったらバフを削除
    execute if data storage mob: buff{timer:0} run function mob:buff/manager/remove

# リセット
    data remove storage mob: buff