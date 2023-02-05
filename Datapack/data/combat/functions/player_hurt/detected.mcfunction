##########
#>
#

### @s = 攻撃してきたエンティティ、@a[tag=this,limit=1] = プレイヤー

# 被ダメージ(補正無し)を設定
    scoreboard players operation @s dmg_dealt = @s ad
    scoreboard players operation @a[tag=this,limit=1] dmg_received = @s dmg_dealt
# 攻撃時のトリガー
    execute store result storage asset:mob id int 1 run scoreboard players get @s MobID
    function #asset:mob/attack
    data remove storage asset:mob id
# ダメージ処理
    # 防御＋ダメージブレ補正
        execute as @a[tag=this,limit=1] run function player:status/def/apply
        execute as @a[tag=this,limit=1] run function combat:damage/blur
    execute as @a[tag=this,limit=1] at @s run function player:on_hurt/dmg_received