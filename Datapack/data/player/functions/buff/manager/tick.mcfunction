#> player:buff/manager/tick
# バフ管理マーカーのtick処理

# バフのデータ→ストレージ
    data modify storage player: Buff set from entity @s data.Buff

# Phaseの値を設定
    function player:buff/manager/phase

# ストレージ→マーカーのdata
    data modify entity @s data.Buff set from storage player: Buff

# Timer:0になったらバフを削除
    execute if data storage player: Buff{Timer:0} run function player:buff/manager/remove

# リセット
    data remove storage player: Buff