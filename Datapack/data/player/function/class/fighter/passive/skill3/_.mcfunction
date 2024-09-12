#> player:class/fighter/passive/skill3/_
# スキルレベルごとの効果

# ダメージの決定
    scoreboard players operation $CounterDamage Temporary = @p[tag=Victim] PassiveSkill3
    scoreboard players operation $CounterDamage Temporary *= #20 Constant
    scoreboard players operation $PlayerMaxHP Temporary = @p[tag=Victim] PassiveSkill3
    scoreboard players operation $PlayerMaxHP Temporary *= @p[tag=Victim] HPMax
    scoreboard players operation $PlayerMaxHP Temporary /= #3 Constant
    scoreboard players operation $CounterDamage Temporary += $PlayerMaxHP Temporary

# 反撃！
    # 被ダメージ(補正無し)を設定
        data modify storage lib: Damage.Type set value "Melee"
        scoreboard players operation @s DmgReceived = $CounterDamage Temporary

    # 攻撃したプレイヤーを記録
        scoreboard players operation @s PlayerID = @p[tag=Victim] PlayerID

    # 属性纏い攻撃
        scoreboard players operation $ElementRank Temporary = @p[tag=Victim] ElementRank
        execute if entity @p[tag=Victim,tag=ElementFire] run function mob:on_hurt/element/fire/_
        execute if entity @p[tag=Victim,predicate=player:is_element/water] run function mob:on_hurt/element/water
        execute if entity @p[tag=Victim,tag=ElementThunder] at @s run function mob:on_hurt/element/thunder/_
        execute if entity @p[tag=Victim,tag=ElementEarth] run function mob:on_hurt/element/earth
        execute if entity @p[tag=Victim,tag=ElementWind] at @s run function mob:on_hurt/element/wind/_
        scoreboard players reset $ElementRank Temporary

    # ダメージを受けた際の処理
        execute at @s run function mob:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @s DmgReceived
    scoreboard players reset $CounterDamage Temporary
    scoreboard players reset $PlayerMaxHP Temporary