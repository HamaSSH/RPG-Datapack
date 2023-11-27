#> player:combat/main/bow/quiver/store_arrow/lore/9
# スロット9の矢筒のLoreを設定

$data modify storage lib: NewInventory[{Slot:9b}].tag.display.Lore[3] set value '[{"text":"\\uE116▸ ","color":"white","italic":false},{"text":"容量: ","color":"#E0E0E0"},$(Arrow),{"text":"/","color":"#D8D8D8"},$(Capacity)]'