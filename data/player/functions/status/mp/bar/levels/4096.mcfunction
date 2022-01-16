### function player:status/mp/bar/levels/4096

scoreboard players remove $XPBarLevels Temporary 4096
xp add @s 4096 levels
# もしMPが 8192 以上であれば再帰 (万が一)
execute if score $XPBarLevels Temporary matches 4096.. run function player:status/mp/bar/levels/4096
