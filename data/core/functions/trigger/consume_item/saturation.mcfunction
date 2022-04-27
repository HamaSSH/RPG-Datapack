# 満腹度回復値を取得
    execute positioned 0 0 0 as @e[type=marker,tag=ConsumeTemp,distance=..0.01,limit=1] if score @s PlayerID = @a[tag=this,limit=1] PlayerID run data modify storage core:temp Data.saturation set from entity @s data.saturation
# 数値に応じてeffect
    execute if data storage core:temp Data{saturation:1} run effect give @s saturation 1 0 true
    execute if data storage core:temp Data{saturation:2} run effect give @s saturation 1 1 true
    execute if data storage core:temp Data{saturation:3} run effect give @s saturation 1 2 true
    execute if data storage core:temp Data{saturation:4} run effect give @s saturation 1 3 true
    execute if data storage core:temp Data{saturation:5} run effect give @s saturation 1 4 true
    execute if data storage core:temp Data{saturation:6} run effect give @s saturation 1 5 true
    execute if data storage core:temp Data{saturation:7} run effect give @s saturation 1 6 true
    execute if data storage core:temp Data{saturation:8} run effect give @s saturation 1 7 true
    execute if data storage core:temp Data{saturation:9} run effect give @s saturation 1 8 true
    execute if data storage core:temp Data{saturation:10} run effect give @s saturation 1 9 true
    execute if data storage core:temp Data{saturation:11} run effect give @s saturation 1 10 true
    execute if data storage core:temp Data{saturation:12} run effect give @s saturation 1 11 true
    execute if data storage core:temp Data{saturation:13} run effect give @s saturation 1 12 true
    execute if data storage core:temp Data{saturation:14} run effect give @s saturation 1 13 true
    execute if data storage core:temp Data{saturation:15} run effect give @s saturation 1 14 true
    execute if data storage core:temp Data{saturation:16} run effect give @s saturation 1 15 true
    execute if data storage core:temp Data{saturation:17} run effect give @s saturation 1 16 true
    execute if data storage core:temp Data{saturation:18} run effect give @s saturation 1 17 true
    execute if data storage core:temp Data{saturation:19} run effect give @s saturation 1 18 true
    execute if data storage core:temp Data{saturation:20} run effect give @s saturation 1 19 true
# リセット
    data remove storage core:temp Data.saturation