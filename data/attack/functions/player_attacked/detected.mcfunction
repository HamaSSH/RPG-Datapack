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
# 無敵時間
  tag @s add HurtTime
  scoreboard players set @s HurtTime 10
# 属性攻撃
  execute if score @a[tag=this,limit=1] FireAttack matches 1.. run function mob:on_hurt/element/fire
  execute if score @a[tag=this,limit=1] WaterAttack matches 1.. run function mob:on_hurt/element/water
  execute if score @a[tag=this,limit=1] ThunderAttack matches 1.. run function mob:on_hurt/element/thunder
  execute if score @a[tag=this,limit=1] EarthAttack matches 1.. run function mob:on_hurt/element/earth
  execute if score @a[tag=this,limit=1] WindAttack matches 1.. run function mob:on_hurt/element/wind
# 死亡処理
  execute if score @s hp matches ..0 run function mob:on_death/_
# リセット
  tag @a[tag=this,limit=1] remove CriticalHit
  scoreboard players reset $DamageColor