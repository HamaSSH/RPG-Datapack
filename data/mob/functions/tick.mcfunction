### モブ関連の#tick

# HP表示 → 名前
  execute if entity @s[tag=InCombat] if data entity @s {PortalCooldown:0} run function mob:status/hp/display/reset/_
  execute if entity @s[tag=HurtTime,scores={combat_timer=1..}] run function mob:hurt_time
# 自然・エフェクトダメージ
  execute if predicate core:is_on_fire if data entity @s {HurtTime:9s} run function mob:on_hurt/natural/fire