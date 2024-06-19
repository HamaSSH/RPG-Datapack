#> player:buff/manager/tick
# バフ管理マーカーのtick処理

# バフのデータ→ストレージ
    data modify storage player: buff set from entity @s data.buff

# Phaseの値を設定
    function player:buff/manager/phase

# ストレージ→マーカーのdata
    data modify entity @s data.buff set from storage player: buff

# timer:0になったらバフを削除
    execute if data storage player: buff{timer:0} run function player:buff/manager/remove

# リセット
    data remove storage player: buff