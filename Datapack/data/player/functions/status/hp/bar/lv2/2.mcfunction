#> player:status/hp/bar/lv2/2
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 17..20 run function player:status/hp/bar/lv1/4
    execute if score $HPRatio Temporary matches 21..24 run function player:status/hp/bar/lv1/5