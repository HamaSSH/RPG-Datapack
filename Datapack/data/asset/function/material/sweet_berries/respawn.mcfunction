#> asset:material/sweet_berries/respawn
# リスポーン処理

# リスポーンタイマーを止める
    tag @s remove Growing
    fill ~ ~1 ~ ~ ~1 ~ air replace nether_wart

# 見た目の変更
    execute on passengers run data modify entity @s item.components.minecraft:item_model set value "resource:custom/material/sweet_berries_3"

# HPのリセット
    tag @s remove HasHPScore