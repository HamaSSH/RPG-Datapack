#> mob:summon/set_name
# モブの表示名の設定

# もし頭装備がなければ適当なアイテムを入れる
    execute unless data storage asset:mob ArmorItems[3].id run data modify storage asset:mob ArmorItems[3] set value {id:"glass_bottle",Count:1b}
# 汎用アマスタでNBT処理
    data modify entity 83a-51-1-0-1 ArmorItems[3] set from storage asset:mob ArmorItems[3]
    item modify entity 83a-51-1-0-1 armor.head mob:summon/set_name
    data modify storage asset:mob ArmorItems[3] set from entity 83a-51-1-0-1 ArmorItems[3]
    item replace entity 83a-51-1-0-1 armor.head with air
# 名前表示の設定
    data modify storage asset:mob ArmorItems[3].tag.ResetName set from storage asset:mob ArmorItems[3].tag.display.Name
    data modify entity @s CustomName set from storage asset:mob ArmorItems[3].tag.display.Name
    data modify entity @s CustomNameVisible set value 1b