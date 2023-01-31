##########
#>
#

# 初期設定
    data modify storage mob:temp Data.CustomName set value '{"text":"スパイダー"}'
    data modify storage mob:temp Data.NameChar set value 5
    data modify storage mob:temp Data.lvl set value 6
    item modify entity @s armor.head mob:set_name
    data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
    data modify entity @s ArmorItems[3].tag.ResetName set from entity @s ArmorItems[3].tag.display.Name
    data remove storage mob:temp Data

    data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
    data modify entity @s NoAI set value 0b
    data modify entity @s CustomNameVisible set value 1b