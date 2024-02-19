#> ui:smithing/combine/_
# 合成処理

# 合成スロットの保存
    data remove storage ui: NewItems[{Slot:10b}].tag.UI.Combine[{tag:{UI:{Combinable:1b}}}]
    data modify storage ui: NewItems[{Slot:10b}].tag.UI.Combine append from storage ui: NewItems[{Slot:12b}]
    data modify storage ui: NewItems[{Slot:10b}].tag.UI.Combine append from storage ui: NewItems[{Slot:13b}]
    data modify storage ui: NewItems[{Slot:10b}].tag.UI.Combine append from storage ui: NewItems[{Slot:14b}]