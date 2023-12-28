#> item:tick
# アイテム関連の常時実行処理

# 採集ポイント
    execute at @a as @e[type=armor_stand,tag=Material,distance=..6] at @s run function item:material/collect/tick

# 釣り関連
    execute as @e[type=fishing_bobber] if entity @s[tag=!BobberInit] at @s if block ~ ~ ~ #lib:fluid run function item:fishing/bobber/init
    # execute as @e[type=fishing_bobber,tag=FishingBobber] at @s run function item:fishing/magma/bobber
    execute as @e[type=item] if data entity @s Item.tag{ItemType:"FishingBobber"} run function item:fishing/bobber/tick