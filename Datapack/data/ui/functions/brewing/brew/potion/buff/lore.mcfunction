#> ui:brewing/brew/potion/buff/lore
# バフ情報のLoreの設定

# ひとつずつ1行ずつ処理
    data modify storage ui: SingleBuff set from storage ui: PotionData.Buff[0]
    execute if data storage ui: SingleBuff.Effect run function ui:brewing/brew/potion/buff/effect/lore
    execute if data storage ui: SingleBuff.Status run function ui:brewing/brew/potion/buff/status/lore

# PotionData.Buffが無くなるまで続ける
    data remove storage ui: SingleBuff
    data remove storage ui: PotionData.Buff[0]
    execute unless data storage ui: PotionData.Buff[] run data remove storage ui: PotionData.Buff
    execute if data storage ui: PotionData.Buff[] run data modify storage ui: SingleBuff set from storage ui: PotionData.Buff[0]
    execute if data storage ui: PotionData.Buff[] run function ui:brewing/brew/potion/buff/lore