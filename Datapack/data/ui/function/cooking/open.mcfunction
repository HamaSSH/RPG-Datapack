#> ui:cooking/open
# UIを開いた際の処理

# 共通処理
    function ui:open

# 音演出
    playsound block.fire.extinguish master @s ~ ~ ~ 0.5 1.8
    playsound block.bamboo_wood_hanging_sign.place master @s ~ ~ ~ 1 0.7
    playsound block.bamboo_wood_hanging_sign.place master @s ~ ~ ~ 1 0.9

# リセット
    advancement revoke @s only ui:open/cooking