### @s = 攻撃されたエンティティ、@a[tag=this,limit=1] = プレイヤー

# 被ダメージ(補正無し)を設定
  execute as @a[tag=this,limit=1] run function attack:player_attacked/dmg_dealt
  scoreboard players operation @s dmg_received = @a[tag=this,limit=1] dmg_dealt
# ダメージ処理
  # 防御＋ダメージブレ補正
    function mob:status/def/apply
    function attack:damage/blur
  execute if entity @a[tag=this,tag=CriticalHit,limit=1] run scoreboard players set $DamageColor Temporary 4
  execute at @s run function mob:on_hurt/dmg_received
# 攻撃したプレイヤーを記録
  scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
# 死亡処理
  execute if score @s hp matches ..0 run function mob:on_death/_
# リセット
  tag @a[tag=this,limit=1] remove CriticalHit
  scoreboard players reset $DamageColor