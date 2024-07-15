#> player:on_hurt/natural/fire
# 炎上ダメージ

# ダメージ設定
    data modify storage lib: Damage.Natural set value "Fire"
    execute if entity @s[predicate=lib:is_in_lava] run scoreboard players set @s DmgReceived 10
    execute unless entity @s[predicate=lib:is_in_lava] run scoreboard players set @s DmgReceived 5

# ダメージの適用
    function player:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    advancement revoke @s only player:on_hurt/natural/fire