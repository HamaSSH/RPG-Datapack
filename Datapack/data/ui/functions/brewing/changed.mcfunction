#> ui:brewing/changed
# UI内で変更があった場合の処理

# markerの中身→storage
    data modify storage ui: Items set from entity @s data.Items

# 不要アイテムのclear
    clear @a[tag=UIOpen] #lib:every_item{UI:{ItemType:"Blank"}}
    execute as @a[tag=UIOpen] store result score @s ClickedIcon run clear @s #lib:every_item{UI:{ItemType:"Brew"}}

# 醸造する
    execute unless data storage ui: Items[{Slot:13b,tag:{UI:{ItemType:"Brew"}}}] run function ui:brewing/brew/check

# メニュー内容更新
    # 初期化
        item replace block ~ ~ ~ container.9 with gray_stained_glass_pane{UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}
        item replace block ~ ~ ~ container.13 with brewing_stand{UI:{ItemType:"Brew"},display:{Name:'{"text":"醸造する","bold":true,"italic":false}',Lore:['{"text":"左スロットに入れたアイテムから","color":"gray","italic":false}','[{"text":"","color":"gray","italic":false},{"text":"カスタムポーション","color":"white","bold":true},{"text":"を生成する。"}]']}}
        item replace block ~ ~ ~ container.17 with gray_stained_glass_pane{UI:{ItemType:"Blank"},display:{Name:'{"text":""}'}}
    # 完成品の配置

# リセット
    scoreboard players reset @a[tag=UIOpen] ClickedIcon