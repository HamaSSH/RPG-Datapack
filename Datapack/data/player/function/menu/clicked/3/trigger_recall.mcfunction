#> player:menu/clicked/3/trigger_recall
# 魔法「リコール」の実行

tag @s add MenuRecall
tag @s add MenuRecallUpdate

# 魔法のIDを取得
    data modify storage player: magic set value {mp_cost:10,cooldown:100,id:5404,element:"earth"}
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

# 検知用アイテムの更新処理
    function player:menu/update