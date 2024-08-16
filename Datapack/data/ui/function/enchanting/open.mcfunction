#> ui:enchanting/open
# UIを開いた際の処理

# 共通処理
    function ui:open

# 音演出
    playsound entity.elder_guardian.curse master @s ~ ~ ~ 0.1 2

# リセット
    advancement revoke @s only ui:open/enchanting