#> ui:shop/open
# UIを開いた際の処理

# 共通処理
    function ui:open

# 音演出
    playsound resource:entity.villager.yes1 master @s ~ ~ ~ 0.6 1.1

# リセット
    advancement revoke @s only ui:open/shop