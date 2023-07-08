#> player:status/hp/bar/lv1/0
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches ..2 run function player:status/hp/bar/lv0/0
    execute if score $HPRatio Temporary matches 3..4 run function player:status/hp/bar/lv0/1