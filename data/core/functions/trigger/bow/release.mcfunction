# 弓を放った時のBowCharge
    execute if score @s BowCharge matches 3.. if score @s bow_shot matches 1.. run function core:trigger/bow/shot
# リセット
    tag @s remove ChargingBow
    scoreboard players set @s BowCharge 0
    scoreboard players set @s ChargingBow 0
    scoreboard players reset @s bow_shot
    advancement revoke @s only core:trigger/bow/release