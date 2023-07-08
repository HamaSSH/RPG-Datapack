#> player:status/hp/bar/lv1/4
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 17..18 run function player:status/hp/bar/lv0/8
    execute if score $HPRatio Temporary matches 19..20 run function player:status/hp/bar/lv0/9