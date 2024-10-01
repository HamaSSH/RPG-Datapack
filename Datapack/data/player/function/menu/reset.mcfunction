#> player:menu/reset
# メニュー用アイテムの後処理

# タグのリセット
    tag @s remove MenuStatus
    tag @s remove MenuPassive

# 検知用アイテムの更新処理
    function player:menu/update