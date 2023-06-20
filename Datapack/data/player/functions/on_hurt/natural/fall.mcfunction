##########
#>
#

# 落下距離 → ダメージ
    scoreboard players operation $FallDistance Temporary = @s fall_distance
    scoreboard players operation $FallDistance Temporary /= #100 Constant
    execute if score $FallDistance Temporary matches 3.. run scoreboard players operation @s dmg_received = $FallDistance Temporary
    execute if score $FallDistance Temporary matches 3.. run function player:on_hurt/dmg_received
# リセット
    scoreboard players reset $FallDistance Temporary
    scoreboard players reset @s fall_distance