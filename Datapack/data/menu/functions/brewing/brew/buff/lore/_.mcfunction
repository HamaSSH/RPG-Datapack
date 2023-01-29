# フレーバーテキスト
    data modify storage menu:temp NewLore append value '{"text":"醸造台で作ったポーション。","color":"#D8D8D8","italic":false}'
    data modify storage menu:temp NewLore append value '{"text":"綺麗ではないが絶妙な色だ。","color":"#D8D8D8","italic":false}'
    data modify storage menu:temp NewLore append value '{"text": "⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯","color": "dark_gray","strikethrough": true}'
# バフの種類ごとのLoreスコア計算
    execute if data storage menu:temp Data.potionBuff[{bonus:"hp"}] run function menu:brewing/brew/buff/lore/hp
    execute if data storage menu:temp Data.potionBuff[{bonus:"hp_regen"}] run function menu:brewing/brew/buff/lore/hp_regen
    execute if data storage menu:temp Data.potionBuff[{bonus:"mp"}] run function menu:brewing/brew/buff/lore/mp
    execute if data storage menu:temp Data.potionBuff[{bonus:"mp_regen"}] run function menu:brewing/brew/buff/lore/mp_regen
    execute if data storage menu:temp Data.potionBuff[{bonus:"ad"}] run function menu:brewing/brew/buff/lore/ad
    execute if data storage menu:temp Data.potionBuff[{bonus:"ap"}] run function menu:brewing/brew/buff/lore/ap
    execute if data storage menu:temp Data.potionBuff[{bonus:"dex"}] run function menu:brewing/brew/buff/lore/dex
    execute if data storage menu:temp Data.potionBuff[{bonus:"def"}] run function menu:brewing/brew/buff/lore/def
    execute if data storage menu:temp Data.potionBuff[{bonus:"spd"}] run function menu:brewing/brew/buff/lore/spd
    execute if data storage menu:temp Data.potionBuff[{bonus:"crt"}] run function menu:brewing/brew/buff/lore/crt
    execute if data storage menu:temp Data.potionBuff[{bonus:"luk"}] run function menu:brewing/brew/buff/lore/luk
# bonusステータス
    data remove block 0 0 0 Items
    loot replace block 0 0 0 container.0 loot menu:brewing/brew/buff/lore
    data modify storage menu:temp NewLore append from block 0 0 0 Items[0].tag.display.Lore[]
# アイテムの種類【レアリティ】(売値)
    data modify storage menu:temp NewLore append value '{"text": "⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯⎯","color": "dark_gray","strikethrough": true}'
    data modify storage menu:temp NewLore append value '{"text": "▸ 消費ｱｲﾃﾑ【\\uE2B0】","color": "white","italic": false}'
# リセット
    scoreboard players reset $HPBuff
    scoreboard players reset $HPDurMin
    scoreboard players reset $HPDurSec10
    scoreboard players reset $HPDurSec1
    scoreboard players reset $HPRegenBuffInt
    scoreboard players reset $HPRegenBuffDec
    scoreboard players reset $HPRegenDurMin
    scoreboard players reset $HPRegenDurSec10
    scoreboard players reset $HPRegenDurSec1
    scoreboard players reset $MPBuff
    scoreboard players reset $MPDurMin
    scoreboard players reset $MPDurSec10
    scoreboard players reset $MPDurSec1
    scoreboard players reset $MPRegenBuffInt
    scoreboard players reset $MPRegenBuffDec
    scoreboard players reset $MPRegenDurMin
    scoreboard players reset $MPRegenDurSec10
    scoreboard players reset $MPRegenDurSec1
    scoreboard players reset $ADBuff
    scoreboard players reset $ADDurMin
    scoreboard players reset $ADDurSec10
    scoreboard players reset $ADDurSec1
    scoreboard players reset $APBuff
    scoreboard players reset $APDurMin
    scoreboard players reset $APDurSec10
    scoreboard players reset $APDurSec1
    scoreboard players reset $DEXBuff
    scoreboard players reset $DEXDurMin
    scoreboard players reset $DEXDurSec10
    scoreboard players reset $DEXDurSec1
    scoreboard players reset $DEFBuff
    scoreboard players reset $DEFDurMin
    scoreboard players reset $DEFDurSec10
    scoreboard players reset $DEFDurSec1
    scoreboard players reset $SPDBuff
    scoreboard players reset $SPDDurMin
    scoreboard players reset $SPDDurSec10
    scoreboard players reset $SPDDurSec1
    scoreboard players reset $CRTBuff
    scoreboard players reset $CRTDurMin
    scoreboard players reset $CRTDurSec10
    scoreboard players reset $CRTDurSec1
    scoreboard players reset $LUKBuff
    scoreboard players reset $LUKDurMin
    scoreboard players reset $LUKDurSec10
    scoreboard players reset $LUKDurSec1