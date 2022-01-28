### function player:status/mp/bar/points/remove

execute if score $XPBarDif Temporary matches -255..-128 run function player:status/mp/bar/points/-128
execute if score $XPBarDif Temporary matches -127..-64 run function player:status/mp/bar/points/-64
execute if score $XPBarDif Temporary matches -63..-32 run function player:status/mp/bar/points/-32
execute if score $XPBarDif Temporary matches -31..-16 run function player:status/mp/bar/points/-16
execute if score $XPBarDif Temporary matches -15..-8 run function player:status/mp/bar/points/-8
execute if score $XPBarDif Temporary matches -7..-4 run function player:status/mp/bar/points/-4
execute if score $XPBarDif Temporary matches -3..-2 run function player:status/mp/bar/points/-2
execute if score $XPBarDif Temporary matches -1 run function player:status/mp/bar/points/-1
