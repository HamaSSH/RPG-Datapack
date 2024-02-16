#> ui:brewing/brew/potion/buff/_
# クラフトポーションのバフ情報を決定

data modify storage ui: Ingredient.Buff set from storage ui: NewItems[{Slot:10b}].tag.Consumables.Buff
execute if data storage ui: Ingredient.Buff[] run function ui:brewing/brew/potion/buff/status/_ with storage ui: Ingredient.Buff[0]
execute if data storage ui: Ingredient.Buff[] run function ui:brewing/brew/potion/buff/effect/_ with storage ui: Ingredient.Buff[0]

data modify storage ui: Ingredient.Buff set from storage ui: NewItems[{Slot:11b}].tag.Consumables.Buff
execute if data storage ui: Ingredient.Buff[] run function ui:brewing/brew/potion/buff/status/_ with storage ui: Ingredient.Buff[0]
execute if data storage ui: Ingredient.Buff[] run function ui:brewing/brew/potion/buff/effect/_ with storage ui: Ingredient.Buff[0]

data modify storage ui: Ingredient.Buff set from storage ui: NewItems[{Slot:12b}].tag.Consumables.Buff
execute if data storage ui: Ingredient.Buff[] run function ui:brewing/brew/potion/buff/status/_ with storage ui: Ingredient.Buff[0]
execute if data storage ui: Ingredient.Buff[] run function ui:brewing/brew/potion/buff/effect/_ with storage ui: Ingredient.Buff[0]