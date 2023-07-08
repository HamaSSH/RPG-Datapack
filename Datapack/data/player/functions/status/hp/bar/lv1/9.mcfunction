#> player:status/hp/bar/lv1/9
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 37..38 run function player:status/hp/bar/lv0/18
    execute if score $HPRatio Temporary matches 39.. run function player:status/hp/bar/lv0/19