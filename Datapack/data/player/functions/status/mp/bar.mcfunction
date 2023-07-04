#> player:status/mp/bar
# MPバー (経験値バー) の操作

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
    execute if score $XPBarPoints Temporary matches 512.. run xp add @s 512 points
    execute if score $XPBarPoints Temporary matches 512.. run scoreboard players remove $XPBarPoints Temporary 512
    execute if score $XPBarPoints Temporary matches 256.. run xp add @s 256 points
    execute if score $XPBarPoints Temporary matches 256.. run scoreboard players remove $XPBarPoints Temporary 256
    execute if score $XPBarPoints Temporary matches 128.. run xp add @s 128 points
    execute if score $XPBarPoints Temporary matches 128.. run scoreboard players remove $XPBarPoints Temporary 128
    execute if score $XPBarPoints Temporary matches 64.. run xp add @s 64 points
    execute if score $XPBarPoints Temporary matches 64.. run scoreboard players remove $XPBarPoints Temporary 64
    execute if score $XPBarPoints Temporary matches 32.. run xp add @s 32 points
    execute if score $XPBarPoints Temporary matches 32.. run scoreboard players remove $XPBarPoints Temporary 32
    execute if score $XPBarPoints Temporary matches 16.. run xp add @s 16 points
    execute if score $XPBarPoints Temporary matches 16.. run scoreboard players remove $XPBarPoints Temporary 16
    execute if score $XPBarPoints Temporary matches 8.. run xp add @s 8 points
    execute if score $XPBarPoints Temporary matches 8.. run scoreboard players remove $XPBarPoints Temporary 8
    execute if score $XPBarPoints Temporary matches 4.. run xp add @s 4 points
    execute if score $XPBarPoints Temporary matches 4.. run scoreboard players remove $XPBarPoints Temporary 4
    execute if score $XPBarPoints Temporary matches 2.. run xp add @s 2 points
    execute if score $XPBarPoints Temporary matches 2.. run scoreboard players remove $XPBarPoints Temporary 2
    execute if score $XPBarPoints Temporary matches 1.. run xp add @s 1 points
    execute if score $XPBarPoints Temporary matches 1.. run scoreboard players remove $XPBarPoints Temporary 1

# レベル数値加算
    xp set @s 0 levels
    execute if score $XPBarLevels Temporary matches 8192.. run xp add @s 8192 levels
    execute if score $XPBarLevels Temporary matches 8192.. run scoreboard players remove $XPBarLevels Temporary 8192
    execute if score $XPBarLevels Temporary matches 4096.. run xp add @s 4096 levels
    execute if score $XPBarLevels Temporary matches 4096.. run scoreboard players remove $XPBarLevels Temporary 4096
    execute if score $XPBarLevels Temporary matches 2048.. run xp add @s 2048 levels
    execute if score $XPBarLevels Temporary matches 2048.. run scoreboard players remove $XPBarLevels Temporary 2048
    execute if score $XPBarLevels Temporary matches 1024.. run xp add @s 1024 levels
    execute if score $XPBarLevels Temporary matches 1024.. run scoreboard players remove $XPBarLevels Temporary 1024
    execute if score $XPBarLevels Temporary matches 512.. run xp add @s 512 levels
    execute if score $XPBarLevels Temporary matches 512.. run scoreboard players remove $XPBarLevels Temporary 512
    execute if score $XPBarLevels Temporary matches 256.. run xp add @s 256 levels
    execute if score $XPBarLevels Temporary matches 256.. run scoreboard players remove $XPBarLevels Temporary 256
    execute if score $XPBarLevels Temporary matches 128.. run xp add @s 128 levels
    execute if score $XPBarLevels Temporary matches 128.. run scoreboard players remove $XPBarLevels Temporary 128
    execute if score $XPBarLevels Temporary matches 64.. run xp add @s 64 levels
    execute if score $XPBarLevels Temporary matches 64.. run scoreboard players remove $XPBarLevels Temporary 64
    execute if score $XPBarLevels Temporary matches 32.. run xp add @s 32 levels
    execute if score $XPBarLevels Temporary matches 32.. run scoreboard players remove $XPBarLevels Temporary 32
    execute if score $XPBarLevels Temporary matches 16.. run xp add @s 16 levels
    execute if score $XPBarLevels Temporary matches 16.. run scoreboard players remove $XPBarLevels Temporary 16
    execute if score $XPBarLevels Temporary matches 8.. run xp add @s 8 levels
    execute if score $XPBarLevels Temporary matches 8.. run scoreboard players remove $XPBarLevels Temporary 8
    execute if score $XPBarLevels Temporary matches 4.. run xp add @s 4 levels
    execute if score $XPBarLevels Temporary matches 4.. run scoreboard players remove $XPBarLevels Temporary 4
    execute if score $XPBarLevels Temporary matches 2.. run xp add @s 2 levels
    execute if score $XPBarLevels Temporary matches 2.. run scoreboard players remove $XPBarLevels Temporary 2
    execute if score $XPBarLevels Temporary matches 1.. run xp add @s 1 levels
    execute if score $XPBarLevels Temporary matches 1.. run scoreboard players remove $XPBarLevels Temporary 1

# MPに変化がある時だけfunctionを常時実行
    scoreboard players set @s PreviousMP -1
    execute if score $XPBarDif Temporary matches 0 store result score @s PreviousMP run xp query @s levels

# リセット
    scoreboard players reset $XPBarDif Temporary
    scoreboard players reset $XPBarLevels Temporary
    scoreboard players reset $XPBarPoints Temporary