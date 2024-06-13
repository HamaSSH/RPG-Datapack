#> ui:brewing/brew/potion/buff/_
# クラフトポーションのバフ情報を決定

data modify storage ui: Ingredient.buff set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_data.consumables.buff
execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/status/_ with storage ui: Ingredient.buff[0]
execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/effect/_ with storage ui: Ingredient.buff[0]

data modify storage ui: Ingredient.buff set from storage ui: NewItems[{Slot:11b}].components.minecraft:custom_data.consumables.buff
execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/status/_ with storage ui: Ingredient.buff[0]
execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/effect/_ with storage ui: Ingredient.buff[0]

data modify storage ui: Ingredient.buff set from storage ui: NewItems[{Slot:12b}].components.minecraft:custom_data.consumables.buff
execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/status/_ with storage ui: Ingredient.buff[0]
execute if data storage ui: Ingredient.buff[] run function ui:brewing/brew/potion/buff/effect/_ with storage ui: Ingredient.buff[0]