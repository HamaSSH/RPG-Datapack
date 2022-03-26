# 売却額の計算
    data modify storage menu:temp Data.sell set from storage menu:temp Data.return
    execute if data storage menu:temp Data.sell[] run function menu:shop/sell/price
# 売却ページ(1)でのボタンクリック検知
    # ホームページ(0)へ
        execute unless data storage menu:temp Data.Items[{Slot:8b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:8b,tag:{menu:{blank:1b}}}] run function menu:return_item/_
    # 「売却」を実行
        execute unless data storage menu:temp Data.Items[{Slot:17b,tag:{menu:{button:"sell!"}}}] unless data storage menu:temp Data.return[{tag:{menu:{sellable:0b}}}] run function menu:shop/sell/_