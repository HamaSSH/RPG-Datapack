#> player:combat/player_hurt/detected
# 敵モブ(@s)からプレイヤー(@p[tag=Victim])への攻撃処理

# 被ダメージ(補正無し)を設定
    data modify storage lib: Damage.Type set value "Melee"
    scoreboard players operation @p[tag=Victim] DmgReceived = @s DmgDealt

# 攻撃時のトリガー(アセットのattack処理呼び出し)
    data modify storage asset:mob namespace set from entity @s ArmorItems[3].components.minecraft:custom_data.namespace
    function asset:mob/manager/attack with storage asset:mob
    data remove storage asset:mob namespace

# ダメージを受けた際の処理
    execute as @p[tag=Victim] at @s run function player:on_hurt/_

# リセット
    data remove storage lib: Damage.Type
    scoreboard players reset @p[tag=Victim] DmgReceived

# 反撃される場合
    execute if entity @p[tag=Victim,predicate=player:class/is_fighter,scores={PassiveSkill3=1..}] run function player:class/fighter/passive/skill3/check