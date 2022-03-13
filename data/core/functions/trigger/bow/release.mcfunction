# 弓を放った時のBowCharge
    execute if score @s BowCharge matches 3.. if score @s bow_shot matches 1.. run function core:trigger/bow/shot
# リセット
    tag @s remove BowCharging
    scoreboard players reset @s BowCharge
    scoreboard players reset @s IfBowCharge
    scoreboard players reset @s bow_shot
    advancement revoke @s only core:bow_release