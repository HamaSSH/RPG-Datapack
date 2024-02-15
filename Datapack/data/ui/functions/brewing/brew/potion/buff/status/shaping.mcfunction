#> ui:brewing/brew/potion/buff/status/shaping
# ステータスバフをもとにデータを整形

# テキスト
    execute if data storage ui: Ingredient.SingleBuff{Status:"HP"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "最大ＨＰ"
    execute if data storage ui: Ingredient.SingleBuff{Status:"HPR"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "自然回復"
    execute if data storage ui: Ingredient.SingleBuff{Status:"MP"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "最大ＭＰ"
    execute if data storage ui: Ingredient.SingleBuff{Status:"MPR"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "自然回復"
    execute if data storage ui: Ingredient.SingleBuff{Status:"STR"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "物理攻撃"
    execute if data storage ui: Ingredient.SingleBuff{Status:"INT"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "魔法攻撃"
    execute if data storage ui: Ingredient.SingleBuff{Status:"DEX"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "器用さ"
    execute if data storage ui: Ingredient.SingleBuff{Status:"DEF"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "防御力"
    execute if data storage ui: Ingredient.SingleBuff{Status:"AGI"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "素早さ"
    execute if data storage ui: Ingredient.SingleBuff{Status:"CRT"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "会心"
    execute if data storage ui: Ingredient.SingleBuff{Status:"LUK"} run data modify storage ui: Ingredient.Buff[0].Lore.Text set value "幸運"

# バフの強さ
    execute store result storage ui: Ingredient.Buff[0].Lore.Amplifier int 1 run scoreboard players get $Amplifier Temporary

# 素材アイテムからLoreを流用
    $data modify storage ui: Ingredient.Buff[0].Lore.L set string storage ui: Ingredient.display.Lore[$(Citation)] 0 32
    $data modify storage ui: Ingredient.Buff[0].Lore.R set string storage ui: Ingredient.display.Lore[$(Citation)] -54
    # $data remove storage ui: Ingredient.display.Lore[$(Citation)]

# ステータスバフの符号
    execute if score $Amplifier Temporary matches 0.. run data modify storage ui: Ingredient.Buff[0].Lore.Sign set value "+"
    execute if score $Amplifier Temporary matches ..-1 run data modify storage ui: Ingredient.Buff[0].Lore.Sign set value ""

# エフェクトの持続時間
    data modify storage ui: Ingredient.Buff[0].Lore.10Sec set value ""
    execute if score $DurationSec Temporary matches ..9 run data modify storage ui: Ingredient.Buff[0].Lore.10Sec set value 0
    execute store result storage ui: Ingredient.Buff[0].Lore.Sec int 1 run scoreboard players get $DurationSec Temporary
    execute store result storage ui: Ingredient.Buff[0].Lore.Min int 1 run scoreboard players get $DurationMin Temporary
