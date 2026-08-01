#> mob:status/hp/display/_
# モブのCustomName表示更新（HPバー+名前）

# HP割合（0〜40）を計算
    scoreboard players operation @s HPRatio = @s HP
    scoreboard players operation @s HPRatio *= #40 Constant
    scoreboard players operation @s HPRatio /= @s HPMax
    execute if score @s HPRatio matches ..1 run scoreboard players set @s HPRatio 1
    execute if score @s HPRatio matches 41.. run scoreboard players set @s HPRatio 40
    execute if score @s HP matches ..0 run scoreboard players set @s HPRatio 0

# 左右HPバーのインデックスを計算
    # 前半
        scoreboard players operation $HPBarLeft Temporary = @s HPRatio
        execute if score $HPBarLeft Temporary matches 21.. run scoreboard players set $HPBarLeft Temporary 21
        execute store result storage macro:temp hp_display.left int 1 run scoreboard players get $HPBarLeft Temporary
    # 後半
        scoreboard players operation $HPBarRight Temporary = @s HPRatio
        scoreboard players remove $HPBarRight Temporary 20
        execute if score $HPBarRight Temporary matches ..0 run scoreboard players set $HPBarRight Temporary 0
        execute store result storage macro:temp hp_display.right int 1 run scoreboard players get $HPBarRight Temporary

# 名前の文字数スペース幅のインデックスを計算
    execute store result score $NameChar Temporary run data get entity @s data.name_char
    execute store result storage macro:temp hp_display.space int 1 run scoreboard players get $NameChar Temporary

# マクロ引数を用意して適用
    data modify storage macro:temp hp_display.name set from entity @s data.name
    function mob:status/hp/display/apply.m with storage macro:temp hp_display

# InCombatが0の時はリセット
    execute if score @s InCombat matches 0 run scoreboard players reset @s InCombat

# リセット
    data remove storage macro:temp hp_display
    scoreboard players reset $HPBarLeft Temporary
    scoreboard players reset $HPBarRight Temporary
    scoreboard players reset $NameChar Temporary
