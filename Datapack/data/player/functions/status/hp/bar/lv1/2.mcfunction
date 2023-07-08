#> player:status/hp/bar/lv2/0
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 9..10 run function player:status/hp/bar/lv0/4
    execute if score $HPRatio Temporary matches 11..12 run function player:status/hp/bar/lv0/5