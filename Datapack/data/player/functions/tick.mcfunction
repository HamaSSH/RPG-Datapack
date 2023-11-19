#> player:tick
# プレイヤー関連のtick処理

# プレイヤーの初期化
    execute unless score @s PlayerID matches 0.. run function player:init

# プレイヤーNBT→ストレージ
    data modify storage player: Inventory set from entity @s Inventory
    data modify storage player: SelectedItem set from entity @s SelectedItem
    data modify storage player: Offhand set from storage player: Inventory[{Slot:-106b}]

# プレイヤーUI
    execute as @a at @s run function player:ui/_

# トリガー
    function player:trigger/selected_slot/detect
    execute if entity @s[scores={RightClick=1..}] run function player:trigger/right_click
    execute if entity @s[scores={SneakTime=1..}] run function player:trigger/sneak
    execute if score @s FallDistance matches 1..399 run scoreboard players reset @s FallDistance
    execute if score @s UsedBow matches 1.. run function player:combat/main/bow/used

# 魔法を発動したプレイヤーのtick処理
    function #asset:magic/player

# ため攻撃をしているプレイヤーのtick処理
    function player:combat/main/tick

# タイマー
    execute if score @s HurtTime matches 1.. run scoreboard players remove @s HurtTime 1
    execute if score @s InCombat matches 1.. run scoreboard players remove @s InCombat 1
    execute if score @s SkillTimer matches 1.. run scoreboard players remove @s SkillTimer 1
    execute if score @s GoldTimer matches 1.. run scoreboard players remove @s GoldTimer 1

# 獲得ゴールド表示用
    execute if score @s GoldTimer matches 0 run function player:status/gold/display/_

# 経験値の加算
    execute if score @s EXPGained matches 1.. run function player:status/lvl/exp/_

# ステータスシステムの処理
    function player:status/hp/_
    function player:status/mp/_

# ステータス更新
    execute if entity @s[tag=StatusUpdate] run function player:status/update

# バニラ要素から一切のダメージを受けない
    effect give @s resistance infinite 10 true
    effect give @s instant_health infinite 252 true

# リセット
    data remove storage player: Inventory
    data remove storage player: SelectedItem
    data remove storage player: Offhand