#> player:status/hp/bar/lv1/7
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 29..30 run function player:status/hp/bar/lv0/14
    execute if score $HPRatio Temporary matches 31..32 run function player:status/hp/bar/lv0/15