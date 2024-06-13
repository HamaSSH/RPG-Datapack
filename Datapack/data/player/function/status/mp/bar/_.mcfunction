#> player:status/mp/bar/_
# MPバー(経験値バー)の操作

# 操作前のレベルを一旦保存
    execute store result score $XPBarLevels Temporary run scoreboard players get @s MP

# レベル129はポイントが 0~1002 なので割合を調べるのに最適
    xp set @s 129 levels
    execute store result score $XPBarPoints Temporary run xp query @s points

# MPの割合(0~100%)との違いを調べる
    scoreboard players operation $XPBarDif Temporary = @s MPRatio
    scoreboard players operation $XPBarDif Temporary -= $XPBarPoints Temporary
    scoreboard players operation $XPBarDif Temporary /= #8 Constant

# 経験値ポイント加算
    xp set @s 0 points
    scoreboard players operation $XPBarPoints Temporary += $XPBarDif Temporary
    execute store result storage player: XPBar.Point int 1 run scoreboard players get $XPBarPoints Temporary
    function player:status/mp/bar/set_point with storage player: XPBar

# レベル数値加算
    xp set @s 0 levels
    execute store result storage player: XPBar.Level int 1 run scoreboard players get $XPBarLevels Temporary
    function player:status/mp/bar/set_level with storage player: XPBar

# MPに変化がある時だけfunctionを常時実行
    scoreboard players set @s PreviousMP -1
    execute if score $XPBarDif Temporary matches 0 store result score @s PreviousMP run xp query @s levels

# リセット
    data remove storage player: XPBar
    scoreboard players reset $XPBarDif Temporary
    scoreboard players reset $XPBarLevels Temporary
    scoreboard players reset $XPBarPoints Temporary