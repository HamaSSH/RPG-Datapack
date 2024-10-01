#> player:menu/clicked/1/show_passive
# プレイヤーパッシブをLoreに表示

playsound resource:custom.levelup master @s ~ ~ ~ 0.1 1.6
tag @s add MenuPassive

# 検知用アイテムの更新処理
    function player:menu/update

# Loreの更新
    function player:menu/clicked/1/update_passive