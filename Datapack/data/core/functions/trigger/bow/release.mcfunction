##########
#>
#

# 弓を放った時のBowCharge
    execute if score @s BowCharge matches 3.. if score @s bow_shot matches 1.. run function core:trigger/bow/shot
# BowChargeスコアのリセット
    execute if score @s PrevBowCharge = @s BowCharge run scoreboard players reset @s BowCharge
    scoreboard players operation @s PrevBowCharge = @s BowCharge