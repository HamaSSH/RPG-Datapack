#> player:status/hp/bar/lv1/8
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 33..34 run function player:status/hp/bar/lv0/16
    execute if score $HPRatio Temporary matches 35..36 run function player:status/hp/bar/lv0/17