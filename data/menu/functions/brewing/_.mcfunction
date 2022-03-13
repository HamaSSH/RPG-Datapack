# メニューの召喚
    execute if entity @s[tag=!Menu] run function menu:brewing/summon
# メニュー管理マーカーの#tick
    execute positioned ^ ^ ^10 as @e[type=marker,tag=MenuManager,distance=..2] positioned ^ ^ ^-10 if score @s PlayerID = @p PlayerID run function menu:brewing/manager
# チェストトロッコの#tick
    execute positioned ~ ~5.0 ~ as @e[type=chest_minecart,tag=Open,distance=..2] positioned ~ ~-5.0 ~ if score @s PlayerID = @p PlayerID run function menu:brewing/slot_check