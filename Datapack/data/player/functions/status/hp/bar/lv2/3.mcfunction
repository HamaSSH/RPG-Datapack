##########
#>
#

# 更に分岐
    execute if score $HPRatio Temporary matches 25..28 run function player:status/hp/bar/lv1/6
    execute if score $HPRatio Temporary matches 29..32 run function player:status/hp/bar/lv1/7