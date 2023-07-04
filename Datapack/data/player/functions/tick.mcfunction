#> player:tick
# プレイヤー関連のtick処理

# バニラ要素から一切のダメージを受けない
    effect give @s resistance infinite 10 true
    effect give @s instant_health infinite 252 true

# トリガー
    function player:trigger/selected_slot/detect

# ステータスシステムの処理
    function player:status/hp/_
    function player:status/mp/_

# ステータス更新
    execute if entity @s[tag=StatusUpdate] run function player:status/update

# 職業のtick処理
    function player:class/_