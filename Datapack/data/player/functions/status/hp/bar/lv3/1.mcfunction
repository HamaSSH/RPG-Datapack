##########
#>
#

# 更に分岐
    execute if score $HPRatio Temporary matches 17..24 run function player:status/hp/bar/lv2/2
    execute if score $HPRatio Temporary matches 25..32 run function player:status/hp/bar/lv2/3