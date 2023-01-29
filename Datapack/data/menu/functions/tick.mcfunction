### メニュー(GUI)関連の#tick

# メニュー召喚
    execute if predicate menu:brewing run function menu:brewing/summon
    execute if predicate menu:cooking run function menu:cooking/summon
    execute if predicate menu:crafting run function menu:crafting/summon
    execute if predicate menu:upgrading run function menu:upgrading/summon

# 他プレイヤーのチェストトロッコ覗き防止(ちょっとガバ)
    execute if predicate menu:prevent run summon magma_cube ~ ~1.2 ~ {PortalCooldown:1,Silent:1b,DeathLootTable:"none",NoAI:1b,Health:1000f,Size:0,Tags:["MenuInit"],Attributes:[{Name:"generic.max_health",Base:1000}]}

# メニュー操作検知
    execute if entity @s[tag=Menu] run scoreboard players add @s menu_timer 1
    execute if score @s menu_timer matches 1 run scoreboard players set $ButtonClicked Temporary 1
    execute if score @s menu_timer matches 1.. positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..5] positioned ^ ^ ^-10 if score @s PlayerID = @p PlayerID run function menu:manager

# メニューを閉じたことの検知
    # 開けてから20tick以降から閉じた判定
        execute if score @s menu_timer matches 20 positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager] positioned ^ ^ ^-10 if score @s PlayerID = @p PlayerID run tp @s ^ ^ ^10
    # 視点を動かす or 動く → メニューリセット
        execute if score @s menu_timer matches 20.. positioned ^ ^ ^10 unless entity @e[type=marker,tag=MenuManager,distance=..0.01] positioned ^ ^ ^-10 run function menu:reset

# 開かれなかったGUIのkill
    execute as @e[tag=MenuInit] if data entity @s {PortalCooldown:0} run function menu:kill