#> player:magic/trigger
# オフハンドの魔法アイテムで右クリックしたときの処理

# 魔法のIDを取得
    data modify storage player: magic set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.magic
    data modify storage player: mp_cost set from storage player: magic.mp_cost
    data modify storage asset:magic id set from storage player: magic.id

# 条件を確認して魔法発動
    function player:status/cd/check/_
    execute if entity @s[tag=CDCheckPass] run function player:status/mp/check/_
    execute if entity @s[tag=CDCheckPass] if entity @s[tag=MPCheckPass] run function player:magic/_

# リセット
    tag @s remove CDCheckPass
    tag @s remove MPCheckPass
    data remove storage player: magic
    data remove storage player: mp_cost
    data remove storage asset:magic id