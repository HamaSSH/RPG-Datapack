#> ui:cooking/cook/check
# 料理できるか確認

tag @s add Cookable

# 素材スロット内のアイテムとレシピの適合を確認
    # 素材
        data modify storage ui: CookingItems set value []
        data modify storage ui: CookingItems append from storage ui: NewItems[{Slot:10b}].components.minecraft:custom_model_data
        data modify storage ui: CookingItems append from storage ui: NewItems[{Slot:11b}].components.minecraft:custom_model_data
        data modify storage ui: CookingItems append from storage ui: NewItems[{Slot:12b}].components.minecraft:custom_model_data
        data modify storage ui: CookIngredients set value {ingredient1:-1,ingredient2:-2,ingredient3:-3}
        data modify storage ui: CookIngredients.ingredient1 set from storage ui: CookingItems[0]
        data modify storage ui: CookIngredients.ingredient2 set from storage ui: CookingItems[1]
        data modify storage ui: CookIngredients.ingredient3 set from storage ui: CookingItems[2]
    # 結果を取得
        function ui:cooking/recipe/get with storage ui: CookIngredients
        execute if data storage ui: Result{id:0} run tag @s remove Cookable

# レシピが存在すれば料理
    execute if entity @s[tag=Cookable] run function ui:cooking/cook/_ with storage ui: Result

# 効果音
    execute if entity @s[tag=PlaysoundOnce] on vehicle on vehicle on attacker run playsound entity.generic.extinguish_fire master @s ~ ~ ~ 0.2 1.7

# リセット
    tag @s remove Cookable
    tag @s remove PlaysoundOnce
    data remove storage ui: CookingItems
    data remove storage ui: CookIngredients
    data remove storage ui: Result