#> mob:on_death/drop/loot/loottable
# ルートテーブルをルートドロップ用のオタマジャクシに適用

data modify entity @s DeathLootTable set from storage mob: DeathLootTable
damage @s 1.0 generic by @p from @p