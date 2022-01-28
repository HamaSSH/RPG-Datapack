### function player:status/mp/bar/points/add

execute if score $XPBarDif Temporary matches 128..255 run function player:status/mp/bar/points/128
execute if score $XPBarDif Temporary matches 64..127 run function player:status/mp/bar/points/64
execute if score $XPBarDif Temporary matches 32..63 run function player:status/mp/bar/points/32
execute if score $XPBarDif Temporary matches 16..31 run function player:status/mp/bar/points/16
execute if score $XPBarDif Temporary matches 8..15 run function player:status/mp/bar/points/8
execute if score $XPBarDif Temporary matches 4..7 run function player:status/mp/bar/points/4
execute if score $XPBarDif Temporary matches 2..3 run function player:status/mp/bar/points/2
execute if score $XPBarDif Temporary matches 1 run function player:status/mp/bar/points/1
