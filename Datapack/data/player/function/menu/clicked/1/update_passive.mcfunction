#> player:menu/clicked/1/update_passive
# プレイヤーパッシブLoreの更新

tag @s remove MenuPassiveUpdate
tag @s add NoClass

# 未取得時のパッシブ
    data modify storage player: menu.passive1.name set value '"？？？"'
    data modify storage player: menu.passive1.desc set value '""'
    data modify storage player: menu.passive1.line set value '"　　　　　　　　　 "'
    data modify storage player: menu.passive2.name set value '"？？？"'
    data modify storage player: menu.passive2.desc set value '""'
    data modify storage player: menu.passive2.line set value '"　　　　　　　　　 "'
    data modify storage player: menu.passive3.name set value '"？？？"'
    data modify storage player: menu.passive3.desc set value '""'
    data modify storage player: menu.passive3.line set value '"　　　　　　　　　 "'
    data modify storage player: menu.passive4.name set value '"？？？"'
    data modify storage player: menu.passive4.desc set value '""'
    data modify storage player: menu.passive4.line set value '"　　　　　　　　　 "'

# 職業ごとの操作
    execute if predicate player:class/is_fighter run function player:menu/clicked/1/class/fighter
    execute if predicate player:class/is_hunter run function player:menu/clicked/1/class/hunter
    execute if predicate player:class/is_paladin run function player:menu/clicked/1/class/paladin
    execute if predicate player:class/is_wizard run function player:menu/clicked/1/class/wizard

# 職業を持たない場合
    execute if entity @s[tag=NoClass] run return run item modify entity @s player.crafting.1 player:menu/passive/none

# プレイヤーメニューのLore編集
    item modify entity @s player.crafting.1 player:menu/passive/_