#> item:fishing/loot/init
# ルートドロップ用のオタマジャクシの初期化

damage @s 10 generic by @p[advancements={player:trigger/used_item/fishing_rod=true}]
function mob:manager/vanish