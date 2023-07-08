#> player:status/hp/bar/lv1/6
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 25..26 run function player:status/hp/bar/lv0/12
    execute if score $HPRatio Temporary matches 27..28 run function player:status/hp/bar/lv0/13