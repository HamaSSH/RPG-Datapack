#> player:status/hp/bar/lv2/0
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches ..4 run function player:status/hp/bar/lv1/0
    execute if score $HPRatio Temporary matches 5..8 run function player:status/hp/bar/lv1/1