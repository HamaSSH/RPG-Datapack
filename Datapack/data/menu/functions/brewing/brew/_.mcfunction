##########
#>
#

    execute as @p run function asset:quest/601.craft_potion/reward

# スロットに先客がいれば返却
    execute if data storage menu:temp Data.Items[{tag:{consumable:1b,potion:1b}}] run data modify storage menu:temp Data.return append from storage menu:temp Data.Items[{tag:{consumable:1b,potion:1b}}]
    function menu:return_item/_
# バフ情報の設定
    data modify storage menu:temp Data.newBuff set from storage menu:temp Data.refresh[{Slot:10b}].tag.buff
    execute if data storage menu:temp Data.newBuff[0] run function menu:brewing/brew/buff/_
    data modify storage menu:temp Data.newBuff set from storage menu:temp Data.refresh[{Slot:11b}].tag.buff
    execute if data storage menu:temp Data.newBuff[0] run function menu:brewing/brew/buff/_
    data modify storage menu:temp Data.newBuff set from storage menu:temp Data.refresh[{Slot:12b}].tag.buff
    execute if data storage menu:temp Data.newBuff[0] run function menu:brewing/brew/buff/_
# ポーションの色決定
    # それぞれのアイテムによるポーションの色取得
        execute store result score $RGB1 Temporary run data get storage menu:temp Data.refresh[{Slot:10b}].tag.Menu.Color 1
        execute store result score $RGB2 Temporary run data get storage menu:temp Data.refresh[{Slot:11b}].tag.Menu.Color 1
        execute store result score $RGB3 Temporary run data get storage menu:temp Data.refresh[{Slot:12b}].tag.Menu.Color 1
        scoreboard players remove $RGB1 Temporary 1000000000
        scoreboard players remove $RGB2 Temporary 1000000000
        scoreboard players remove $RGB3 Temporary 1000000000
        scoreboard players operation $RGB1 Temporary += $RGB2 Temporary
        scoreboard players operation $RGB1 Temporary += $RGB3 Temporary
    # RGBそれぞれの値の平均を求める
        scoreboard players operation $Red Temporary = $RGB1 Temporary
        scoreboard players operation $Red Temporary /= #10^6 Constant
        scoreboard players operation $Red Temporary %= #1000 Constant
        scoreboard players operation $Red Temporary /= $BrewIngredients Temporary
        scoreboard players operation $Red Temporary *= #65536 Constant
        scoreboard players operation $Green Temporary = $RGB1 Temporary
        scoreboard players operation $Green Temporary /= #1000 Constant
        scoreboard players operation $Green Temporary %= #1000 Constant
        scoreboard players operation $Green Temporary /= $BrewIngredients Temporary
        scoreboard players operation $Green Temporary *= #256 Constant
        scoreboard players operation $Blue Temporary = $RGB1 Temporary
        scoreboard players operation $Blue Temporary %= #1000 Constant
        scoreboard players operation $Blue Temporary /= $BrewIngredients Temporary
    # 足し合わせて最終的なCustomPotionColorを決定
        scoreboard players operation $RGB Temporary += $Red Temporary
        scoreboard players operation $RGB Temporary += $Green Temporary
        scoreboard players operation $RGB Temporary += $Blue Temporary
        execute store result storage menu:temp Data.color int 1 run scoreboard players get $RGB Temporary
# 素材アイテムのCount減
    execute store result score $Count Temporary run data get storage menu:temp Data.refresh[{Slot:10b}].Count
    execute store result storage menu:temp Data.refresh[{Slot:10b}].Count byte 0.999 run scoreboard players get $Count Temporary
    execute store result score $Count Temporary run data get storage menu:temp Data.refresh[{Slot:11b}].Count
    execute store result storage menu:temp Data.refresh[{Slot:11b}].Count byte 0.999 run scoreboard players get $Count Temporary
    execute store result score $Count Temporary run data get storage menu:temp Data.refresh[{Slot:12b}].Count
    execute store result storage menu:temp Data.refresh[{Slot:12b}].Count byte 0.999 run scoreboard players get $Count Temporary
# クラフトポーション完成
    data modify storage menu:temp Data.done append value {Count:1b,Slot:14b,id:"potion",tag:{consumable:1b,potion:1b,HideFlags:127,display:{Name:'{"text":"クラフトポーション","italic":false}'}}}
    execute if score $BrewIngredients Temporary matches 2.. run data modify storage menu:temp Data.done append value {Count:1b,Slot:15b,id:"potion",tag:{consumable:1b,potion:1b,HideFlags:127,display:{Name:'{"text":"クラフトポーション","italic":false}'}}}
    execute if score $BrewIngredients Temporary matches 3.. run data modify storage menu:temp Data.done append value {Count:1b,Slot:16b,id:"potion",tag:{consumable:1b,potion:1b,HideFlags:127,display:{Name:'{"text":"クラフトポーション","italic":false}'}}}
    # Lore バフ情報 ポーションの色
        function menu:brewing/brew/buff/lore/_
        data modify storage menu:temp Data.done[].tag.display.Lore set from storage menu:temp NewLore
        data modify storage menu:temp Data.done[].tag.buff set from storage menu:temp Data.potionBuff
        data modify storage menu:temp Data.done[].tag.CustomPotionColor set from storage menu:temp Data.color
# 演出
    scoreboard players set $ButtonClicked Temporary 1
    playsound block.brewing_stand.brew master @p ~ ~ ~ 0.4 0.9
    playsound block.bubble_column.upwards_inside master @p ~ ~ ~ 1 2
    playsound item.firecharge.use master @p ~ ~ ~ 0.25 1.3
# リセット
    scoreboard players reset $RGB1
    scoreboard players reset $RGB2
    scoreboard players reset $RGB3
    scoreboard players reset $Red
    scoreboard players reset $Green
    scoreboard players reset $Blue
    scoreboard players reset $RGB
    scoreboard players reset $Count
    data remove storage menu:temp NewLore