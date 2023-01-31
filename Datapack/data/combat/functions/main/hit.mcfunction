##########
#>
#

### 当たり範囲内にいるモブに対して実行

# 被ダメージを設定
    scoreboard players operation @s dmg_received = $DmgDealt Temporary
# ダメージ処理・ノックバック
    # 防御＋ダメージブレ補正
        function mob:status/def/apply
        function combat:damage/blur
    execute at @s run function mob:on_hurt/dmg_received
    execute at @s run function mob:on_hurt/knockback/_
# 被ダメージ時の赤演出＆死なないように回復
    execute if entity @s[type=#mob:undead] run effect give @s instant_health 1 1
    execute if entity @s[type=#mob:undead] run effect give @s instant_damage 1 10
    execute if entity @s[type=#mob:normal] run effect give @s instant_damage 1 1
    execute if entity @s[type=#mob:normal] run effect give @s instant_health 1 10
# 無敵時間
    tag @s add HurtTime
    scoreboard players set @s HurtTime 10
# 属性攻撃
    execute if score @a[tag=this,limit=1] FireAttack matches 1.. run function mob:on_hurt/element/fire
    execute if score @a[tag=this,limit=1] WaterAttack matches 1.. run function mob:on_hurt/element/water
    execute if score @a[tag=this,limit=1] ThunderAttack matches 1.. run function mob:on_hurt/element/thunder
    execute if score @a[tag=this,limit=1] EarthAttack matches 1.. run function mob:on_hurt/element/earth
    execute if score @a[tag=this,limit=1] WindAttack matches 1.. run function mob:on_hurt/element/wind
# 攻撃したプレイヤーを記録
    scoreboard players operation @s PlayerID = @a[tag=this,limit=1] PlayerID
# Hitタグリセット
    tag @s remove Hit
# 死亡処理
    execute if score @s hp matches ..0 run function mob:on_death/_