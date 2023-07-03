##########
#>
#

# 更に分岐
    execute if score $HPRatio Temporary matches 5..6 run function player:status/hp/bar/lv0/2
    execute if score $HPRatio Temporary matches 7..8 run function player:status/hp/bar/lv0/3