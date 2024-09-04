#> ui:cooking/cook/check
# 料理できるか確認

tag @s add Cookable

# 素材スロット内のアイテムとレシピの適合を確認
    execute store result score $Ingredient1 Temporary run data get storage ui: NewItems[{Slot:10b}].components.minecraft:custom_model_data
    execute store result score $Ingredient2 Temporary run data get storage ui: NewItems[{Slot:11b}].components.minecraft:custom_model_data
    execute store result score $Ingredient3 Temporary run data get storage ui: NewItems[{Slot:12b}].components.minecraft:custom_model_data
    execute if score $Ingredient1 Temporary <= $Ingredient2 Temporary run scoreboard players operation $Ingredient1 Temporary >< $Ingredient2 Temporary
    execute if score $Ingredient2 Temporary <= $Ingredient3 Temporary run scoreboard players operation $Ingredient2 Temporary >< $Ingredient3 Temporary
    execute if score $Ingredient1 Temporary <= $Ingredient2 Temporary run scoreboard players operation $Ingredient1 Temporary >< $Ingredient2 Temporary
    # 素材
        execute store result storage ui: CookIngredients.ingredient1 int 1 run scoreboard players get $Ingredient1 Temporary
        execute store result storage ui: CookIngredients.ingredient2 int 1 run scoreboard players get $Ingredient2 Temporary
        execute store result storage ui: CookIngredients.ingredient3 int 1 run scoreboard players get $Ingredient3 Temporary
    # 結果を取得
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
    scoreboard players reset $Ingredient1 Temporary
    scoreboard players reset $Ingredient2 Temporary
    scoreboard players reset $Ingredient3 Temporary
    data remove storage ui: CookIngredients
    data remove storage ui: Result
    data remove storage ui: craft_type