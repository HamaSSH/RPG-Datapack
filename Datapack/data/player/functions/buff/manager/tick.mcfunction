#> player:buff/manager/tick
# バフ管理マーカーのtick処理

# バフのデータ→ストレージ
    data modify storage player: Buff set from entity @s data.Buff

# Durationを1ずつ引いてゆく
    execute store result entity @s data.Buff.Duration int 0.999 run data get storage player: Buff.Duration

# Duration:0になったらバフを削除
    execute if data storage player: Buff{Duration:0} as @p[tag=BuffOwner] run function player:buff/remove with storage player: Buff
    execute if data storage player: Buff{Duration:0} run kill @s

# リセット
    data remove storage player: Buff