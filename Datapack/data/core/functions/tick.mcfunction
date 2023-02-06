##########
#>
#

### 全てを司る#tick

# 初join処理
    execute as @a unless score @s PlayerID matches 0.. run function core:first_join
# プレイヤー動作のトリガー
    execute as @a at @s run function core:trigger/_
# ステータス表示GUI
    execute as @a run function core:actionbar/_
# 各namespaceの#tick呼び出し
    function combat:tick
    execute at @a run function item:tick
    execute as @e[tag=Magic] at @s run function magic:tick
    execute as @a at @s run function menu:tick
    execute as @e[type=#mob:mobs,tag=Enemy] at @s run function mob:tick
    execute as @e[tag=AssetMob] at @s run function mob:manager/tick
    execute as @a at @s run function player:tick
    execute as @a at @s run function npc:tick