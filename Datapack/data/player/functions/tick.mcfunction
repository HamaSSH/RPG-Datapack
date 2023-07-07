#> player:tick
# プレイヤー関連のtick処理

# プレイヤーNBT→ストレージ
    data modify storage player: Inventory set from entity @s Inventory
    data modify storage player: SelectedItem set from entity @s SelectedItem

# トリガー
    function player:trigger/selected_slot/detect
    execute if entity @s[scores={RightClick=1..}] run function player:trigger/right_click

# バニラ要素から一切のダメージを受けない
    effect give @s resistance infinite 10 true
    effect give @s instant_health infinite 252 true

# ステータスシステムの処理
    function player:status/hp/_
    function player:status/mp/_

# ステータス更新
    execute if entity @s[tag=StatusUpdate] run function player:status/update

# リセット
    data remove storage player: Inventory
    data remove storage player: SelectedItem