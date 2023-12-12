#> mob:on_death/drop/loot/init
# ルートドロップ用のオタマジャクシの初期化

data modify entity @s DeathLootTable set from storage mob: DeathLootTable
execute at @a if score $PlayerID Temporary = @p PlayerID run damage @s 1.0 generic by @p
function mob:manager/vanish