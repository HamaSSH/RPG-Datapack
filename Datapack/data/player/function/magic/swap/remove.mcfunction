#> player:magic/swap/remove
# 選択中のスロットの処理

$data remove storage player:magic hotbar[{Slot:$(Slot)b}]
$data modify storage player:magic hotbar append value {Slot:$(Slot)b}