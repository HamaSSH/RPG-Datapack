##########
#>
#

### 十分に攻撃を溜めない場合の攻撃処理

# 被ダメージを設定
    scoreboard players operation @s dmg_received = $DmgDealt Temporary
# ダメージ処理
    # 防御＋ダメージブレ補正
        function mob:status/def/apply
        # function combat:damage/blur
    execute at @s run function mob:on_hurt/dmg_received
# 被ダメージ時の赤演出
    effect give @s[type=#lib:undead] instant_health
    effect give @s[type=!#lib:undead] instant_damage
# 無敵時間
    tag @s add HurtTime
    scoreboard players set @s HurtTime 10
# 死亡処理
    execute if score @s hp matches ..0 run function mob:on_death/_