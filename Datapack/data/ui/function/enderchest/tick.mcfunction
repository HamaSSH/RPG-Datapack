#> ui:enderchest/tick
# エンダーチェストのUI操作

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle

# ページリセット
    execute unless items entity @s enderchest.7 glass_bottle[custom_data={ui:{item_type:"blank"}}] run scoreboard players set @s UIPage 0
    execute unless items entity @s enderchest.16 glass_bottle[custom_data={ui:{item_type:"blank"}}] run scoreboard players set @s UIPage 0
    execute unless items entity @s enderchest.17 glass_bottle[custom_data={ui:{item_type:"page_display"}}] run scoreboard players set @s UIPage 0
    execute unless items entity @s enderchest.17 glass_bottle[custom_data={ui:{item_type:"page_display"}}] at @s run playsound ui.button.click master @s ~ ~ ~ 0.1 1.8
    execute unless items entity @s enderchest.25 glass_bottle[custom_data={ui:{item_type:"blank"}}] run scoreboard players set @s UIPage 0

# ページの移行
    execute unless items entity @s enderchest.8 glass_bottle[custom_data={ui:{item_type:"forward"}}] run scoreboard players add @s UIPage 1
    execute unless items entity @s enderchest.8 glass_bottle[custom_data={ui:{item_type:"forward"}}] at @s run playsound resource:item.book.open_flip2 master @s ~ ~ ~ 1 1.2
    execute unless items entity @s enderchest.26 glass_bottle[custom_data={ui:{item_type:"backward"}}] run scoreboard players remove @s UIPage 1
    execute unless items entity @s enderchest.26 glass_bottle[custom_data={ui:{item_type:"backward"}}] at @s run playsound resource:item.book.open_flip2 master @s ~ ~ ~ 1 1.2

# 常時エンダーチェストの更新
    function ui:enderchest/page/update