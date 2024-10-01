#> player:menu/clicked/0/show_status
# プレイヤーステータスをLoreに表示

playsound resource:custom.levelup master @s ~ ~ ~ 0.1 1.7
tag @s add MenuStatus

# 検知用アイテムの更新処理
    function player:menu/update

# Loreの更新
    function player:menu/clicked/0/update_status