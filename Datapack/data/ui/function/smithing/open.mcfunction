#> ui:smithing/open
# UIを開いた際の処理

# 共通処理
    function ui:open

# 音演出
    playsound block.anvil.place master @s ~ ~ ~ 0.6 1.2

# リセット
    advancement revoke @s only ui:open/smithing