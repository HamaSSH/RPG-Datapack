#> player:status/hp/bar/lv1/3
# HPの割合に応じたプレイヤーHP表示の設定

# 更に分岐
    execute if score $HPRatio Temporary matches 13..14 run function player:status/hp/bar/lv0/6
    execute if score $HPRatio Temporary matches 15..16 run function player:status/hp/bar/lv0/7