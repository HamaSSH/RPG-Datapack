##########
#>
#

# フレーバーテキスト
    data modify storage menu:temp NewLore append from storage menu:temp Data.refresh[{Slot:10b}].tag.display.Lore[0]
    data modify storage menu:temp NewLore append from storage menu:temp Data.refresh[{Slot:10b}].tag.display.Lore[1]
    data modify storage menu:temp NewLore append from storage menu:temp Data.refresh[{Slot:10b}].tag.display.Lore[2]
# bonusステータス
    data remove block 0 0 0 Items
    # 自然回復スコアの小数点やら
        scoreboard players operation $HPRegenCombineInt Temporary = $HPRegenCombine Temporary
        scoreboard players operation $HPRegenCombineDec Temporary = $HPRegenCombine Temporary
        scoreboard players operation $HPRegenCombineInt Temporary /= #100 Constant
        scoreboard players operation $HPRegenCombineDec Temporary %= #100 Constant
        scoreboard players operation $MPRegenCombineInt Temporary = $MPRegenCombine Temporary
        scoreboard players operation $MPRegenCombineDec Temporary = $MPRegenCombine Temporary
        scoreboard players operation $MPRegenCombineInt Temporary /= #100 Constant
        scoreboard players operation $MPRegenCombineDec Temporary %= #100 Constant
    loot replace block 0 0 0 container.0 loot menu:upgrading/combine/modify/lore
    data modify storage menu:temp NewLore append from block 0 0 0 Items[0].tag.display.Lore[]
# アイテムの種類【レアリティ】売値
    data modify storage menu:temp NewLore append from storage menu:temp Data.refresh[{Slot:10b}].tag.display.Lore[-2]
    data modify storage menu:temp NewLore append from storage menu:temp Data.refresh[{Slot:10b}].tag.display.Lore[-1]
# Loreの書き換え
    data modify storage menu:temp Data.refresh[{Slot:10b}].tag.display.Lore set from storage menu:temp NewLore
# リセット
    data remove storage menu:temp NewLore
    scoreboard players reset $HPRegenCombineInt
    scoreboard players reset $HPRegenCombineDec
    scoreboard players reset $MPRegenCombineInt
    scoreboard players reset $MPRegenCombineDec