#> ui:brewing/open
# UIを開いた際の処理

# 共通処理
    function ui:open

# 音演出
    playsound block.brewing_stand.brew master @s ~ ~ ~ 1.0 1.1

# リセット
    advancement revoke @s only ui:open/brewing