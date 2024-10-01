#> player:menu/clicked/1/close_passive
# プレイヤーパッシブのLore削除

playsound ui.button.click master @s ~ ~ ~ 0.1 0.9
tag @s remove MenuPassive

# 検知用アイテムの更新処理
    function player:menu/update