#> ui:brewing/brew/potion/buff/lore
# バフ情報のLoreの設定

# ひとつずつ1行ずつ処理
    data modify storage ui: SingleBuff set from storage ui: PotionData.buff[0]
    execute if data storage ui: SingleBuff.effect run function ui:brewing/brew/potion/buff/effect/lore
    execute if data storage ui: SingleBuff.status run function ui:brewing/brew/potion/buff/status/lore

# PotionData.buffが無くなるまで続ける
    data remove storage ui: SingleBuff
    data remove storage ui: PotionData.buff[0]
    execute unless data storage ui: PotionData.buff[] run data remove storage ui: PotionData.buff
    execute if data storage ui: PotionData.buff[] run data modify storage ui: SingleBuff set from storage ui: PotionData.buff[0]
    execute if data storage ui: PotionData.buff[] run function ui:brewing/brew/potion/buff/lore