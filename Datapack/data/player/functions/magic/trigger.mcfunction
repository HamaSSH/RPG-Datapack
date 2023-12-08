#> player:magic/trigger
# オフハンドの魔法アイテムで右クリックしたときの処理

# 魔法のIDを取得
    data modify storage player: Magic set from entity @s Inventory[{Slot:-106b}].tag.Magic
    data modify storage player: MPCost set from storage player: Magic.MPCost
    data modify storage asset:magic ID set from storage player: Magic.ID

# 条件を確認して魔法発動
    function player:status/cd/check/_
    execute if entity @s[tag=CDCheckPass] run function player:status/mp/check/_
    execute if entity @s[tag=CDCheckPass] if entity @s[tag=MPCheckPass] run function player:magic/_

# リセット
    tag @s remove CDCheckPass
    tag @s remove MPCheckPass
    data remove storage player: Magic
    data remove storage player: MPCost
    data remove storage asset:magic ID