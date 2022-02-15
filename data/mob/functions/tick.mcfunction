### モブ関連の#tick

# HP表示 → 名前
  execute if entity @s[tag=InCombat] if data entity @s {PortalCooldown:0} run function mob:status/hp/display/reset
  execute if entity @s[tag=HurtTime,scores={HurtTime=1..}] run function mob:hurt_time
# 自然・エフェクトダメージ
  execute unless data entity @s {FallDistance:0.0f} store result score @s fall_distance run data get entity @s FallDistance
  execute if data entity @s {OnGround:1b} if score @s fall_distance matches 3.. run function mob:on_hurt/natural/fall
  execute if data entity @s {HurtTime:9s} if predicate core:is_on_fire run function mob:on_hurt/natural/fire
  execute if data entity @s {HurtTime:10s} if predicate mob:on_hurt/poison run function mob:on_hurt/natural/poison