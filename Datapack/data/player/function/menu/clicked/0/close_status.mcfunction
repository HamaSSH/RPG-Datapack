#> player:menu/clicked/0/close_status
# プレイヤーステータスのLore削除

playsound ui.button.click master @s ~ ~ ~ 0.1 0.9
tag @s remove MenuStatus

# 検知用アイテムの更新処理
    function player:menu/update