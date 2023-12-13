#> mob:buff/manager/tick
# バフ管理マーカーのtick処理

# バフのデータ→ストレージ
    data modify storage mob: Buff set from entity @s data.Buff

# Timerを値を減らす
    execute store result score $Timer Temporary run data get storage mob: Buff.Timer
    execute store result storage mob: Buff.Timer int 1 run scoreboard players remove $Timer Temporary 1
    scoreboard players reset $Timer Temporary

# ストレージ→マーカーのdata
    data modify entity @s data.Buff set from storage mob: Buff

# Timer:0になったらバフを削除
    execute if data storage mob: Buff{Timer:0} run function mob:buff/manager/remove

# リセット
    data remove storage mob: Buff