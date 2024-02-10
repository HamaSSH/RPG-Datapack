#> mob:on_death/drop/loot/init
# ルートドロップ用のオタマジャクシの初期化

data modify entity @s DeathLootTable set from storage mob: DeathLootTable
execute at @a if score $LastAttackerID Temporary = @p PlayerID run damage @s 10 generic by @p
function mob:manager/vanish