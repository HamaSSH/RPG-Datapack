#> player:combat/main/bow/quiver/store_arrow/lore/11
# スロット11の矢筒のLoreを設定

$data modify storage lib: NewInventory[{Slot:11b}].tag.display.Lore[3] set value '[{"text":"\\uE116▸ ","color":"white","italic":false},{"text":"容量: ","color":"#E0E0E0"},$(Arrow),{"text":"/","color":"#D8D8D8"},$(Capacity)]'