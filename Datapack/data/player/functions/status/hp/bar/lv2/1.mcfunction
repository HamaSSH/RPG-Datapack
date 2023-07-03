##########
#>
#

# 更に分岐
    execute if score $HPRatio Temporary matches 9..12 run function player:status/hp/bar/lv1/2
    execute if score $HPRatio Temporary matches 13..16 run function player:status/hp/bar/lv1/3