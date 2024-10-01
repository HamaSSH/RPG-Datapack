#> player:menu/clicked/2/show_status
# プレイヤーステータスをLoreに表示

playsound resource:custom.levelup master @s ~ ~ ~ 0.2 1.7
tag @s add MenuStatus

# Loreの更新
    function player:menu/clicked/2/update_status