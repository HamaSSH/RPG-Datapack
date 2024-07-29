#> mob:on_hurt/natural/fire
# 炎上ダメージの適用

# ダメージ設定
    data modify storage lib: Damage.Natural set value "Fire"
    execute if entity @s[predicate=lib:is_in_lava] run scoreboard players set @s DmgReceived 10
    execute unless entity @s[predicate=lib:is_in_lava] run scoreboard players set @s DmgReceived 5

# ダメージを受けた際の処理
    function mob:on_hurt/_

# リセット
    data remove storage lib: Damage.Natural
    scoreboard players reset @s DmgReceived