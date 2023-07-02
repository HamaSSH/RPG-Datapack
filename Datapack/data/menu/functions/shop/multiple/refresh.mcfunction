##########
#>
#

# 購入メニューの初期化
    data modify entity @s Items set value [{Slot:0b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:1b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:2b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:3b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:4b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:5b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:6b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:7b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:8b,id:"gray_stained_glass_pane",Count:1b,tag:{menu:{blank:1b}}},{Slot:10b,id:"white_stained_glass",Count:1b,tag:{menu:{blank:1b},display:{Name:'{"text":"-","italic":false}'}}},{Slot:12b,id:"white_stained_glass",Count:1b,tag:{menu:{blank:1b},display:{Name:'{"text":"+","italic":false}'}}},{Slot:13b,id:"light_gray_stained_glass",Count:4b,tag:{menu:{blank:1b},display:{Name:'{"text":"+","italic":false}'}}},{Slot:14b,id:"gray_stained_glass",Count:16b,tag:{menu:{blank:1b},display:{Name:'{"text":"+","italic":false}'}}},{Slot:15b,id:"black_stained_glass",Count:64b,tag:{menu:{blank:1b},display:{Name:'{"text":"+","italic":false}'}}},{Slot:17b,id:"gold_block",Count:1b,tag:{menu:{blank:1b}}}]
    item modify entity @s container.17 menu:set_gold
# プレイヤーの所持ゴールドに応じた購入ボタン
    execute store result score $BuyPrice Temporary run data get storage menu:temp Data.buy.tag.buy
    execute store result score $Count Temporary run data get storage menu:temp Data.buy.Count
    scoreboard players operation $BuyPrice Temporary *= $Count Temporary
    # 買える
        execute if score @p gold >= $BuyPrice Temporary run item replace entity @s container.16 with lime_stained_glass_pane
        execute if score @p gold >= $BuyPrice Temporary run item modify entity @s container.16 menu:shop/can_buy
    # 買えない
        execute unless score @p gold >= $BuyPrice Temporary run item replace entity @s container.16 with red_stained_glass_pane
        execute unless score @p gold >= $BuyPrice Temporary run item modify entity @s container.16 menu:shop/cannot_buy
# 買うアイテムを代入
    data modify entity @s Items append from storage menu:temp Data.buy