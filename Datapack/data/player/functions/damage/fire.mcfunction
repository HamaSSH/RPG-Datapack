#> player:damage/fire
# 炎上ダメージ

# ダメージ適用
    data modify storage lib: Damage.Type set value "Fire"
    execute if entity @s[predicate=lib:is_in_lava] run scoreboard players set @s DmgReceived 10
    execute unless entity @s[predicate=lib:is_in_lava] run scoreboard players set @s DmgReceived 5
    function lib:damage/received

# リセット
    scoreboard players reset @s DmgReceived
    data remove storage lib: Damage.Type
    advancement revoke @s only player:damage/fire