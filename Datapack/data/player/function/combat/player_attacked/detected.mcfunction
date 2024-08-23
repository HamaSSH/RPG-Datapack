#> player:combat/player_attacked/detected
# プレイヤー(@p[tag=Attacker])から敵モブ(@s)への攻撃処理

# 被ダメージ(補正無し)を設定
    data modify storage lib: Damage.Type set value "Melee"
    scoreboard players operation @s DmgReceived = @p[tag=Attacker] DmgDealt
    execute if entity @p[tag=Attacker,tag=CriticalHit] run data modify storage lib: Damage.Critical set value 1b

# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = @p[tag=Attacker] PlayerID

# 属性纏い攻撃 #TODO: 矢による属性攻撃でプレイヤーのElementFireタグが着弾直前で切れたら効果なしになる
    scoreboard players operation $ElementRank Temporary = @p[tag=Attacker] ElementRank
    execute if entity @p[tag=Attacker,tag=Charged,tag=ElementFire] run function mob:on_hurt/element/fire/_
    execute if entity @p[tag=Attacker,tag=Charged,predicate=player:is_element/water] run function mob:on_hurt/element/water
    execute if entity @p[tag=Attacker,tag=Charged,tag=ElementThunder] at @s run function mob:on_hurt/element/thunder/_
    execute if entity @p[tag=Attacker,tag=Charged,tag=ElementEarth] run function mob:on_hurt/element/earth
    execute if entity @p[tag=Attacker,tag=Charged,tag=ElementWind] at @s run function mob:on_hurt/element/wind/_
    scoreboard players reset $ElementRank Temporary

# ダメージを受けた際の処理
    execute at @s run function mob:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    data remove storage lib: Damage.Critical
    scoreboard players reset @s DmgReceived