### プレイヤー関連の#tick

# HPMPの自然回復
  function player:status/regeneration
# HPMPBarの操作
  function player:status/hp/bar/apply/_
  execute unless score @s PreviousMP = @s mp run function player:status/mp/bar/_
  execute if entity @s[tag=!HPFull] if score @s hp = @s hp_max run tag @s add HPFull
  execute if entity @s[tag=HPFull] unless score @s hp = @s hp_max run tag @s remove HPFull
  execute if entity @s[tag=!MPFull] if score @s mp = @s mp_max run tag @s add MPFull
  execute if entity @s[tag=MPFull] unless score @s mp = @s mp_max run tag @s remove MPFull
# 自然・エフェクトダメージ
  execute if score @s fall_distance matches 1.. run function player:on_hurt/natural/fall
# ゴールド表示
  execute if score @s gold_timer matches 0.. run scoreboard players remove @s gold_timer 1
  execute if score @s gold_timer matches 0 positioned ~ ~0.8 ~ run function player:status/gold/display/_
# 死亡検知
  effect give @s minecraft:resistance 1000000 10 true
  execute if score @s hp matches ..0 run function player:death
# 獲得経験値
  execute if score @s xp_gained matches 1.. run function player:status/level/xp/_