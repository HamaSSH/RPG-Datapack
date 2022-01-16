### function player:status/mp/bar/levels/add

execute if score $XPBarLevels Temporary matches 4096.. run function player:status/mp/bar/levels/4096
execute if score $XPBarLevels Temporary matches 2048..4095 run function player:status/mp/bar/levels/2048
execute if score $XPBarLevels Temporary matches 1024..2047 run function player:status/mp/bar/levels/1024
execute if score $XPBarLevels Temporary matches 512..1023 run function player:status/mp/bar/levels/512
execute if score $XPBarLevels Temporary matches 256..511 run function player:status/mp/bar/levels/256
execute if score $XPBarLevels Temporary matches 128..255 run function player:status/mp/bar/levels/128
execute if score $XPBarLevels Temporary matches 64..127 run function player:status/mp/bar/levels/64
execute if score $XPBarLevels Temporary matches 32..63 run function player:status/mp/bar/levels/32
execute if score $XPBarLevels Temporary matches 16..31 run function player:status/mp/bar/levels/16
execute if score $XPBarLevels Temporary matches 8..15 run function player:status/mp/bar/levels/8
execute if score $XPBarLevels Temporary matches 4..7 run function player:status/mp/bar/levels/4
execute if score $XPBarLevels Temporary matches 2..3 run function player:status/mp/bar/levels/2
execute if score $XPBarLevels Temporary matches 1 run function player:status/mp/bar/levels/1
