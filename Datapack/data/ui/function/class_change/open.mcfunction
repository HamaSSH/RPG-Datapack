#> ui:class_change/open
# UIを開いた際の処理

# 共通処理
    function ui:open

# 音演出
    playsound entity.villager.celebrate master @s ~ ~ ~ 1 1.2

# リセット
    advancement revoke @s only ui:open/class_change