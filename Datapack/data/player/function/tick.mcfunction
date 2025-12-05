#> player:tick
# プレイヤーのtick処理

# ワールドへの初めてのjoin
    execute unless score @s PlayerID matches 0.. run function core:trigger/first_join

# ワールドへの2回目以降のjoin
    execute if score @s Rejoin matches 1.. run function core:trigger/rejoin

# トリガー検知
    execute if score @s RightClick matches 1.. run function player:trigger/right_click