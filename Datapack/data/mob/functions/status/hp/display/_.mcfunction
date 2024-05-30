#> mob:status/hp/display/_
# モブのHP表示の設定

# モブの名前データを取得
    data modify storage mob: Data set from entity @s ArmorItems[3].components.minecraft:custom_data

# HPの割合に応じてHPバーを設定
    scoreboard players operation @s HPRatio = @s HP
    scoreboard players operation @s HPRatio *= #40 Constant
    scoreboard players operation @s HPRatio /= @s HPMax
    execute if score @s HPRatio matches ..16 run function mob:status/hp/display/lv3/0
    execute if score @s HPRatio matches 17..32 run function mob:status/hp/display/lv3/1
    execute if score @s HPRatio matches 33.. run function mob:status/hp/display/lv2/4

# レベルと名前の文字数に応じてスペースを調節
    scoreboard players operation $Level Temporary = @s LVL
    execute store result score $NameChar Temporary run data get storage mob: Data.NameChar
    function mob:status/hp/display/space

# 名前を適用
    data modify entity 83a-51-1-0-1 ArmorItems[3] set value {id:"glass_bottle",Count:1b}
    item modify entity 83a-51-1-0-1 armor.head mob:hp_display
    data modify entity @s CustomName set from entity 83a-51-1-0-1 ArmorItems[3].components.minecraft:custom_name
    item replace entity 83a-51-1-0-1 armor.head with air

# リセット
    data remove storage mob: Data
    data remove storage mob: Space
    scoreboard players reset $Level Temporary
    scoreboard players reset $NameChar Temporary