#> player:status/hp/bar/lv1/5
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 21..22 run function player:status/hp/bar/lv0/10
    execute if score $HPRatio Temporary matches 23..24 run function player:status/hp/bar/lv0/11