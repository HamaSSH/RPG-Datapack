### @s = 攻撃されたエンティティ、@a[tag=this,limit=1] = プレイヤー

# 被ダメージ(補正無し)を設定
  execute as @a[tag=this,limit=1] run function attack:player_attacked/dmg_dealt
  scoreboard players operation @s dmg_received = @a[tag=this,limit=1] dmg_dealt
# ダメージ処理
  # 防御＋ダメージブレ補正
    function mob:status/def/apply
    function attack:damage/blur
  execute at @s run function mob:on_hurt/dmg_received
# 死亡処理
  execute if score @s hp matches ..0 run function mob:death