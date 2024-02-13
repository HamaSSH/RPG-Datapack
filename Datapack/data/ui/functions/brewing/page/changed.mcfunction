#> ui:brewing/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UIOpen] #lib:every_item{UI:{ItemType:"Blank"}}
    execute as @a[tag=UIOpen] store result score @s ClickedIcon run clear @s #lib:every_item{UI:{ItemType:"Brew"}}

# 醸造する
    execute unless data storage ui: Items[{Slot:13b,tag:{UI:{ItemType:"Brew"}}}] run function ui:brewing/brew/check

# メニュー内容更新
    # 初期化
        execute on vehicle run function ui:brewing/page/init
    # 完成品の配置

# リセット
    scoreboard players reset @a[tag=UIOpen] ClickedIcon