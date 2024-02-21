#> ui:shop/page/get_entry
# 商品のデータをEntryに格納

$data modify storage ui: Entry.ID set from storage ui: Products[$(Num)]
$data modify storage ui: Entry.Slot set value 1$(Num)