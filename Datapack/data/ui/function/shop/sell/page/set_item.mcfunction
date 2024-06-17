#> ui:shop/sell/page/set_item
# アイテムを売却スロットに配置する

# 既にアイテムが入っていればそのまま
$execute if data storage ui: Items[{Slot:$(Slot),tag:{CanSell:1b}}] run data modify storage ui: NewItems append from storage ui: Items[{Slot:$(Slot)}]

# 空きがあればスロットに配置
$execute unless data storage ui: Items[{Slot:$(Slot),tag:{CanSell:1b}}] run data modify storage ui: SellItems[0].Slot set value $(Slot)
$execute unless data storage ui: Items[{Slot:$(Slot),tag:{CanSell:1b}}] run data modify storage ui: NewItems append from storage ui: SellItems[0]
$execute unless data storage ui: Items[{Slot:$(Slot),tag:{CanSell:1b}}] run data remove storage ui: SellItems[0]