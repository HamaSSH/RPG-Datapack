#> item:fishing/bobber/tick
# ウキの常時実行処理

data remove entity @s NoGravity

# プレイヤーが竿を引いた瞬間の処理
    execute unless predicate lib:has_passenger on origin run function item:fishing/rod/hooked
    execute unless predicate lib:has_passenger run kill @s