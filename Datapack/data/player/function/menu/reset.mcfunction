#> player:menu/reset
# メニュー用アイテムの後処理

# 検知用アイテムの更新処理
    function player:menu/update

# リセット
    tag @s remove MenuStatus
    # tag @s remove MenuPassive