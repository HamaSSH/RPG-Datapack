##########
#>
#

# ダメージ表示色用
    scoreboard players set $DamageColor Temporary 1
# 炎上ダメージ
    execute if entity @s[predicate=core:is_in_lava] run scoreboard players set @s dmg_received 10
    execute unless entity @s[predicate=core:is_in_lava] run scoreboard players set @s dmg_received 5
# ダメージ適用
    function player:on_hurt/dmg_received
# リセット
    advancement revoke @s only player:on_hurt/natural/fire
    scoreboard players reset $DamageColor