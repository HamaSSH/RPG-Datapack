#> player:status/hp/bar/lv2/4
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 33..36 run function player:status/hp/bar/lv1/8
    execute if score $HPRatio Temporary matches 37.. run function player:status/hp/bar/lv1/9