##########
#>
#

# 更に分岐
    execute if score $HPRatio Temporary matches ..8 run function player:status/hp/bar/lv2/0
    execute if score $HPRatio Temporary matches 9..16 run function player:status/hp/bar/lv2/1