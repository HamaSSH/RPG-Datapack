#> player:tick
# プレイヤー関連のtick処理

# プレイヤーの初期化
    execute unless score @s PlayerID matches 0.. run function player:init

# プレイヤーがワールドに再入場した時の処理
    execute if score @s Rejoin matches 1.. run function player:rejoin

# プレイヤーデータ→ストレージ
    data modify storage player: Inventory set from entity @s Inventory
    data modify storage player: SelectedItem set from entity @s SelectedItem
    execute if predicate player:hold_weapon/_ run data modify storage player: Weapon.Mainhand set from storage player: SelectedItem
    data modify storage player: Weapon.Offhand set from storage player: Inventory[{Slot:-106b,components:{"minecraft:custom_data":{weapon:"helmet"}}}]
    data modify storage player: Equipment.Helmet set from storage player: Inventory[{Slot:103b,components:{"minecraft:custom_data":{equipment:"helmet"}}}]
    data modify storage player: Equipment.Chestplate set from storage player: Inventory[{Slot:102b,components:{"minecraft:custom_data":{equipment:"chestplate"}}}]
    data modify storage player: Equipment.Leggings set from storage player: Inventory[{Slot:101b,components:{"minecraft:custom_data":{equipment:"leggings"}}}]
    data modify storage player: Equipment.Boots set from storage player: Inventory[{Slot:100b,components:{"minecraft:custom_data":{equipment:"boots"}}}]
    data modify storage player: Equipment.Accessories append from storage player: Inventory[{Slot:9b,components:{"minecraft:custom_data":{equipment:"accessory"}}}]
    data modify storage player: Equipment.Accessories append from storage player: Inventory[{Slot:10b,components:{"minecraft:custom_data":{equipment:"accessory"}}}]
    data modify storage player: Equipment.Accessories append from storage player: Inventory[{Slot:11b,components:{"minecraft:custom_data":{equipment:"accessory"}}}]

# プレイヤーUI
    function player:ui/_

# トリガー
    function player:trigger/selected_slot/detect
    execute if entity @s[scores={RightClick=1..}] run function player:trigger/right_click
    execute if entity @s[scores={SneakTime=1..}] run function player:trigger/sneak
    execute if score @s FallDistance matches 1..399 run scoreboard players reset @s FallDistance
    execute if score @s UsedBow matches 1.. run function player:combat/main/bow/used
    execute positioned ~ ~1.32 ~ as @e[type=item,distance=..0.01] run function player:trigger/drop_item

# ため攻撃をしているプレイヤーのtick処理
    function player:combat/main/tick

# タイマー
    execute if score @s HurtTime matches 1.. run scoreboard players remove @s HurtTime 1
    execute if score @s InCombat matches 1.. run scoreboard players remove @s InCombat 1
    execute if score @s SkillTimer matches 1.. run scoreboard players remove @s SkillTimer 1
    execute if score @s GoldTimer matches 1.. run scoreboard players remove @s GoldTimer 1

# 魔法を発動したプレイヤーのtick処理
    function #asset:magic/player
    execute if predicate player:is_element/_ run function player:magic/element/_

# advancementをtickタイミングで処理
    execute if entity @s[advancements={player:trigger/inventory_changed=true}] run function player:trigger/inventory_changed

# 弓使用中
    execute unless entity @s[tag=UsingBow] if entity @s[advancements={player:trigger/using_item/bow=true}] run function player:trigger/using_item/bow/init
    execute if entity @s[tag=UsingBow] run function player:trigger/using_item/bow/_

# 消費アイテム使用中
    execute unless entity @s[tag=UsingConsumables] if entity @s[advancements={player:trigger/using_item/consumables=true}] run function player:trigger/using_item/consumables/init
    execute if entity @s[tag=UsingConsumables] if entity @s[advancements={player:trigger/using_item/consumables=false}] run function player:trigger/using_item/consumables/reset

# ツール「ハサミ」の使用中
    execute unless entity @s[tag=UsingShears] if entity @s[advancements={player:trigger/using_item/shears=true}] run function player:trigger/using_item/shears/init
    execute if entity @s[tag=UsingShears] run function player:trigger/using_item/shears/_

# 獲得ゴールド表示用
    execute if score @s GoldTimer matches 0 run function player:status/gold/display/_

# 経験値の加算
    execute if score @s EXPGained matches 1.. run function player:status/lvl/exp/_

# 職業関連のtick処理
    function player:class/tick

# ステータスシステムの処理
    function player:status/hp/_
    function player:status/mp/_
    execute if predicate lib:has_effect/regeneration run function player:status/hp/regen_effect
    execute if score @s Healing matches 1.. run function player:status/hp/healing

# ステータス更新
    execute if entity @s[tag=StatusUpdate] run function player:status/update

# ステータス確認
    execute if entity @s[tag=!CheckingStatus,predicate=lib:is_sneaking,x_rotation=-90] run function player:status/ui
    execute unless entity @s[tag=CheckingStatus,predicate=lib:is_sneaking,x_rotation=-90] run tag @s remove CheckingStatus

# バニラ要素から一切のダメージを受けない
    effect give @s resistance infinite 10 true
    effect give @s instant_health infinite 252 true
    effect clear @s absorption
    effect clear @s slowness

# リセット
    tag @s remove NewInventorySet
    data remove storage player: Inventory
    data remove storage player: SelectedItem
    data remove storage player: Weapon
    data remove storage player: Equipment
    advancement revoke @s only player:combat/player_attacked
    advancement revoke @s only player:trigger/inventory_changed
    advancement revoke @s only player:trigger/using_item/bow
    advancement revoke @s only player:trigger/using_item/consumables
    advancement revoke @s only player:trigger/using_item/shears