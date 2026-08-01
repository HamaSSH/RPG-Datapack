#> player:tick
# プレイヤーのtick処理

# ワールドへの初めてのjoin
    execute unless score @s PlayerID matches 0.. run function core:trigger/first_join

# ワールドへの2回目以降のjoin
    execute if score @s Rejoin matches 1.. run function core:trigger/rejoin

# トリガー検知
    function player:trigger/selected_slot/detect
    execute if entity @s[advancements={player:trigger/inventory_changed=true}] run function player:trigger/inventory_changed
    execute if score @s RightClick matches 1.. run function player:trigger/right_click

# ステータススコア関連
    function player:status/hp/_
    effect give @s resistance infinite 255 true
    effect give @s instant_health infinite 0 true
    function player:status/mp/_

# スキルバー
    execute unless score @s SkillTimer matches 560.. run scoreboard players add @s SkillTimer 1

# 獲得ゴールド表示用
    execute if score @s GoldTimer matches 1.. run scoreboard players remove @s GoldTimer 1
    execute if score @s GoldTimer matches 0 run function player:status/gold/display/_

# ステータス更新
    execute if entity @s[tag=StatusUpdate] run function player:status/update

# アクションバーUI
    # プレイヤーが水中にいる時の処理
        function player:underwater/_
    function player:actionbar/_