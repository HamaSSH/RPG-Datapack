# ArmorItems[3]に格納されたデータを取得
    data modify storage mob:temp Name.ArmorItems set from entity @s ArmorItems[3]
# HPの割合計算
    scoreboard players operation @s hp_ratio = @s hp
    scoreboard players operation @s hp_ratio *= #40 Constant
    scoreboard players operation @s hp_ratio /= @s hp_max
# レベルと名前の文字数に応じてスペースを調節
    scoreboard players operation $Level Temporary = @s level
    execute store result score $NameChar Temporary run data get storage mob:temp Name.ArmorItems.tag.NameChar
    function mob:status/hp/display/apply/space
# HPの割合に応じてHPBarを表示
    execute if score @s hp_ratio matches ..16 run function mob:status/hp/display/apply/lv3/0
    execute if score @s hp_ratio matches 17..32 run function mob:status/hp/display/apply/lv3/1
    execute if score @s hp_ratio matches 33.. run function mob:status/hp/display/apply/lv2/4
# 名前の適用
    data modify storage mob:temp Name.ResetName set from storage mob:temp Name.ArmorItems.tag.ResetName
    item modify entity @s armor.head mob:modify_name
    data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
# 表示時間
    data modify entity @s PortalCooldown set value 100
    tag @s add InCombat
# リセット
    data remove storage mob:temp Name
    scoreboard players reset $Level
    scoreboard players reset $NameChar