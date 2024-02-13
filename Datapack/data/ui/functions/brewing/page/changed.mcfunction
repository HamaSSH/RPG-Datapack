#> ui:brewing/page/changed
# UI内で変更があった場合の処理

# 不要アイテムのclear
    clear @a[tag=UsingUI] glass_bottle

# 醸造アイテムデータの整形
    # 醸造可能なアイテム→BrewableItems
        data modify storage ui: BrewableItems append from storage ui: Items[{tag:{Menu:{Brewable:1b}}}]
    # アイテムをスロットに配置
        execute if data storage ui: BrewableItems[] run function ui:brewing/page/set_item {Slot:"10b"}
        execute if data storage ui: BrewableItems[] run function ui:brewing/page/set_item {Slot:"11b"}
        execute if data storage ui: BrewableItems[] run function ui:brewing/page/set_item {Slot:"12b"}
    # スロットに空きが無ければ返却
        execute if data storage ui: BrewableItems[] run data modify storage ui: ReturnItems set from storage ui: BrewableItems
        execute if data storage ui: ReturnItems[] run function ui:return_item/_

# 醸造する
    execute unless data storage ui: Items[{Slot:13b,tag:{UI:{ItemType:"Brew"}}}] run function ui:brewing/brew/check

# メニュー内容更新
    # 初期化
        execute on vehicle run function ui:brewing/page/init
    # アイテムを配置
        # execute on vehicle run data modify storage ui: NewItems append from storage ui: Results[]
        execute on vehicle run data modify entity @s Items append from storage ui: NewItems[]

# 二重更新防止
    execute on vehicle run data modify storage ui: Items set from entity @s Items
    data modify entity @s data.Items set from storage ui: Items

# リセット
    data remove storage ui: NewItems
    data remove storage ui: BrewableItems