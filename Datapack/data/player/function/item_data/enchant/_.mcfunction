#> player:item_data/enchant/_
# 各エンチャントの効果呼び出し

$function player:item_data/enchant/$(id)
execute unless data storage player: Enchant[] run data remove storage player: Enchant
execute if data storage player: Enchant[] run function player:item_data/enchant/_ with storage player: Enchant[0]