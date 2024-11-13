#> asset:material/401.sweet_berries/respawn/_
# 召喚処理

# リスポーンタイマーを止める
    tag @s remove Growing
    setblock ~ ~1 ~ air

# 見た目の変更
    execute on passengers run data modify entity @s item.components.minecraft:item_model set value "resource:custom/material/sweet_berries_3"

# HPのリセット
    tag @s remove HasHPScore