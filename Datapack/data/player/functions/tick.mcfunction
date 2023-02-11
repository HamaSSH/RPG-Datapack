##########
#>
#

### プレイヤー関連の#tick

# 満腹度回復
    execute if score @s FoodSaturation matches 2.. run function player:food
# 職業関連の#tick
    function player:class/tick
# 属性particle
    function player:particle/_
# HPMPBarの操作
    function player:status/hp/bar/apply/_
    execute unless score @s PreviousMP = @s mp run function player:status/mp/bar/_
# HPMPの自然回復
    function player:status/regeneration
# 自然・エフェクトダメージ(+落下距離)
    execute store result score @s FallDistance run data get entity @s FallDistance 10
    execute if score @s fall_distance matches 1.. run function player:on_hurt/natural/fall
    execute if score @s HurtTime matches 1.. run scoreboard players remove @s HurtTime 1
    scoreboard players remove @s InCombat 1
# ゴールド表示
    execute if score @s gold_timer matches 0.. run scoreboard players remove @s gold_timer 1
    execute if score @s gold_timer matches 0 positioned ~ ~0.8 ~ run function player:status/gold/display/_
# 死亡検知
    effect give @s resistance 1 10 true
    execute if score @s hp matches ..0 run function player:death
# 獲得経験値
    execute if score @s xp_gained matches 1.. run function player:status/level/xp/_