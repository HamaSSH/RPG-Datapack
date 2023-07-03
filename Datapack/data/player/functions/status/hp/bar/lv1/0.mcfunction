##########
#>
#

# 更に分岐
    execute if score $HPRatio Temporary matches ..2 run function player:status/hp/bar/lv0/0
    execute if score $HPRatio Temporary matches 3..4 run function player:status/hp/bar/lv0/1