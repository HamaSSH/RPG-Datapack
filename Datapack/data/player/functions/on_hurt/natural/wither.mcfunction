##########
#>
#

# ダメージ表示色用
    scoreboard players set $DamageColor Temporary 3
# ウィザーダメージ
    scoreboard players operation @s dmg_received = @s hp_max
    scoreboard players operation @s dmg_received /= #60 Constant
    scoreboard players add @s dmg_received 5
# ダメージ適用
    function player:on_hurt/dmg_received
# リセット
    advancement revoke @s only player:on_hurt/natural/wither
    scoreboard players reset $DamageColor