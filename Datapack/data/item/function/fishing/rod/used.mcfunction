#> item:fishing/rod/used
# 釣り竿を使用したことの検知

# 耐久値を減らす
    execute if items entity @s weapon.mainhand fishing_rod run tag @s add MainhandRod
    execute unless entity @s[tag=MainhandRod] if items entity @s weapon.offhand fishing_rod run tag @s add OffhandRod
    function item:tool/durability/_

# 釣った魚に対しての処理
    execute as @e[type=item] if data entity @s Item.components.minecraft:custom_data{item_type:"fishing_loot"} at @s run function item:fishing/_

# レベルが上がらないように
    playsound resource:fishing.done player @a ~ ~ ~ 0.3 1
    kill @e[type=experience_orb,distance=..1]

# リセット
    tag @s remove MainhandRod
    tag @s remove OffhandRod
    advancement revoke @s only player:trigger/used_item/fishing_rod