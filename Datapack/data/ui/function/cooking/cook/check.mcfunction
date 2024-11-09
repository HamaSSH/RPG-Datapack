#> ui:cooking/cook/check
# 料理できるか確認

tag @s add Cookable

# 素材アイテムのIDをstorageに格納
    data modify storage ui: CookIngredients set value {ingredient1:0,ingredient2:0,ingredient3:0}
    data modify storage ui: CookIngredients.ingredient1 set from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_model_data
    data modify storage ui: CookIngredients.ingredient2 set from storage ui: NewItems[{Slot:11b}].components.minecraft:custom_model_data
    data modify storage ui: CookIngredients.ingredient3 set from storage ui: NewItems[{Slot:12b}].components.minecraft:custom_model_data

# 結果取得
    function ui:cooking/recipe/get with storage ui: CookIngredients
    execute if data storage ui: Result{id:0} run tag @s remove Cookable

# 一括クラフト検知
    data modify storage ui: craft_type set value "multiple"
    execute positioned ~ ~1.2 ~ as @e[type=item,distance=..1] if data entity @s Item{id:"minecraft:glass_bottle",components:{"minecraft:custom_data":{ui:{item_type:"cook"}}}} run data modify storage ui: craft_type set value "single"
    execute on vehicle on vehicle on attacker if items entity @s player.cursor glass_bottle[custom_data={ui:{item_type:"cook"}}] run data modify storage ui: craft_type set value "single"
    execute on vehicle on vehicle on attacker if items entity @s weapon.offhand glass_bottle[custom_data={ui:{item_type:"cook"}}] run data modify storage ui: craft_type set value "single"

# レシピが存在すれば料理
    execute if entity @s[tag=Cookable] run function ui:cooking/cook/_ with storage ui: Result

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound entity.generic.extinguish_fire master @s ~ ~ ~ 0.2 1.7

# リセット
    tag @s remove Cookable
    tag @s remove PlaysoundOnce
    data remove storage ui: CookIngredients
    data remove storage ui: Result
    data remove storage ui: craft_type