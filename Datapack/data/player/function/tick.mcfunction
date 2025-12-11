#> player:tick
# プレイヤーのtick処理

# ワールドへの初めてのjoin
    execute unless score @s PlayerID matches 0.. run function core:trigger/first_join

# ワールドへの2回目以降のjoin
    execute if score @s Rejoin matches 1.. run function core:trigger/rejoin

# トリガー検知
    execute if score @s RightClick matches 1.. run function player:trigger/right_click

# ステータススコア関連
    function player:status/hp/_
    effect give @s resistance infinite 255 true
    effect give @s instant_health infinite 0 true
    function player:status/mp/_

# スキルバー
    execute unless score @s SkillTimer matches 560.. run scoreboard players add @s SkillTimer 1

# アクションバーUI
    # プレイヤーが水中にいる時の処理
        function player:underwater/_
    function player:actionbar/_