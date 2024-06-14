#> item:fishing/rod/used
# 釣り竿を使用したことの検知

say used
# 耐久値を減らす
    execute if items entity @s weapon.mainhand fishing_rod run tag @s add MainhandRod
    execute unless entity @s[tag=MainhandRod] if items entity @s weapon.offhand fishing_rod run tag @s add OffhandRod
    function item:tool/durability/_

#

# リセット
    tag @s remove MainhandRod
    tag @s remove OffhandRod
    advancement revoke @s only player:trigger/used_item/fishing_rod