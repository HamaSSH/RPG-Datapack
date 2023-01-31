##########
#>
#

# メニューごとの場合分け
    execute if data storage menu:temp Data{type:"Brewing"} run function menu:brewing/_
    execute if data storage menu:temp Data{type:"Cooking"} run function menu:cooking/_
    execute if data storage menu:temp Data{type:"Crafting"} run function menu:crafting/_
    execute if data storage menu:temp Data{type:"Upgrading"} run function menu:upgrading/_
# NPC
    execute if data storage menu:temp Data{type:"Shop"} run function menu:shop/_
    execute if data storage menu:temp Data{type:"Class"} run function menu:class/_
# ホバーオフハンドキー対策
    execute as @p run function menu:hover_offhand
# ホバードロップキー対策
    execute positioned ~ ~1.32 ~ as @e[type=item,distance=..0.01] if data entity @s Item.tag.menu{blank:1b} run kill @s