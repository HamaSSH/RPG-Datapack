# 武器のレアリティ
    execute store result score $Rarity Temporary run data get storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}].tag.rarity
# 合成可能アイテムが入れられたら配置
    data modify storage menu:temp Data.combine append from storage menu:temp Data.Items[{tag:{menu:{combinable:1b}}}]
    execute if data storage menu:temp Data.combine[] run function menu:upgrading/put_items/page2
# 合成ページ(2)でのボタンクリック検知
    # ホームページ(0)へ
        execute unless data storage menu:temp Data.Items[{Slot:9b,tag:{menu:{blank:1b}}}] run scoreboard players set @s page 10
        execute unless data storage menu:temp Data.Items[{Slot:10b,tag:{menu:{upgradable:1b}}}] run scoreboard players set @s page 10
        # execute store success score $ItemsChanged Temporary run data modify entity @s data.Upgrade set from storage menu:temp Data.Items[{Slot:10b}].tag.AttributeModifiers[0].UUID
        # execute if score $ItemsChanged Temporary matches 1 run scoreboard players set @s page 10
        execute if score @s page matches 10 run data modify storage menu:temp Data.return append from storage menu:temp Data.refresh[{tag:{menu:{combinable:1b}}}]
        execute if score @s page matches 10 run function menu:return_item/_
    # 「合成」を実行
        execute unless data storage menu:temp Data.Items[{Slot:14b,tag:{menu:{button:"combine"}}}] run function menu:upgrading/combine/check
    # 合成されていたアイテムを取り除いたとき
        # execute if data storage menu:temp Data.Items[{Slot:10b}].tag.menu.combine[{Slot:11b}] unless data storage menu:temp Data.Items[{Slot:11b,tag:{menu:{combinable:1b}}}] run function menu:upgrading/combine/remove/1
    # 合成アイテム(+板ガラス)を合成元のアイテムのタグに入れる
        data modify storage menu:temp Data.refresh[0].tag.menu.combine append from storage menu:temp Data.refresh[{tag:{menu:{combinable:1b}}}]
# リセット
    scoreboard players reset $Rarity
    scoreboard players reset $UpgradeChanged