#> player:status/lvl/up/tellraw
# レベルアップ時のチャット欄へのtellraw

# 自分以外｜自分へのtellraw
    tag @s add LevelUp
    tellraw @a[tag=!LevelUp] ["\uF822⭐ ",{"selector":"@s"},{"text":"のレベルが上がった！"},{"text":" ( "},{"score":{"name":"$PreviousLVL","objective":"Temporary"}},{"text":"\uF822→\uF822"},{"score":{"name":"@s","objective":"LVL"},"color":"yellow","bold":true},{"text":" )"}]
    tellraw @s ["\n\uF822⭐ ",{"text":"レベルが上がった！"},{"text":" ( "},{"score":{"name":"$PreviousLVL","objective":"Temporary"}},{"text":"\uF822→\uF822"},{"score":{"name":"@s","objective":"LVL"},"color":"yellow","bold":true},{"text":" )"}]

# ステータス上昇分のtellraw
    function player:status/get
    scoreboard players operation $CurrentHP Temporary -= $PreviousHP Temporary
    scoreboard players operation $CurrentMP Temporary -= $PreviousMP Temporary
    scoreboard players operation $CurrentSTR Temporary -= $PreviousSTR Temporary
    scoreboard players operation $CurrentINT Temporary -= $PreviousINT Temporary
    scoreboard players operation $CurrentDEX Temporary -= $PreviousDEX Temporary
    scoreboard players operation $CurrentDEF Temporary -= $PreviousDEF Temporary
    scoreboard players operation $CurrentAGI Temporary -= $PreviousAGI Temporary
    scoreboard players operation $CurrentCRT Temporary -= $PreviousCRT Temporary
    scoreboard players operation $CurrentLUK Temporary -= $PreviousLUK Temporary
    data modify storage player: status_ui set value ['','','','','','','','','','','']
    execute if score $CurrentHP Temporary matches 1.. run data modify storage player: status_ui[0] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE100\\uF824"}]'
    execute if score $CurrentHPR Temporary matches 1.. run data modify storage player: status_ui[1] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE101\\uF824"}]'
    execute if score $CurrentMP Temporary matches 1.. run data modify storage player: status_ui[2] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE102\\uF824"}]'
    execute if score $CurrentMPR Temporary matches 1.. run data modify storage player: status_ui[3] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE103\\uF824"}]'
    execute if score $CurrentSTR Temporary matches 1.. run data modify storage player: status_ui[4] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE104\\uF824"}]'
    execute if score $CurrentINT Temporary matches 1.. run data modify storage player: status_ui[5] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE105\\uF824"}]'
    execute if score $CurrentDEX Temporary matches 1.. run data modify storage player: status_ui[6] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE106\\uF824"}]'
    execute if score $CurrentDEF Temporary matches 1.. run data modify storage player: status_ui[7] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE108\\uF824"}]'
    execute if score $CurrentAGI Temporary matches 1.. run data modify storage player: status_ui[8] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE109\\uF824"}]'
    execute if score $CurrentCRT Temporary matches 1.. run data modify storage player: status_ui[9] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE10A\\uF824"}]'
    execute if score $CurrentLUK Temporary matches 1.. run data modify storage player: status_ui[10] set value '["",{"text":"\\uF828↑\\uF808\\uF806","color":"green"},{"text":"\\uE10B\\uF824"}]'
    tellraw @s [" ▸ステータスＵＰ！",{"nbt":"status_ui[0]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"最大ＨＰ: "},[{"score":{"name":"$PreviousHP","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseHP"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentHP","objective":"Temporary"}},")"]]}},{"nbt":"status_ui[1]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"自然回復: "},[{"score":{"name":"$PrevHPRInt","objective":"Temporary"},"color":"#AAAAAA"},".",{"score":{"name":"$PrevHPRDec10","objective":"Temporary"}},{"score":{"name":"$PrevHPRDec","objective":"Temporary"}},"/s → "],[{"score":{"name":"$BaseHPRInt","objective":"Temporary"},"bold":true},".",{"score":{"name":"$BaseHPRDec10","objective":"Temporary"}},{"score":{"name":"$BaseHPRDec","objective":"Temporary"}},"/s"],[{"text":" (+","color":"green"},{"score":{"name":"$CurrHPRInt","objective":"Temporary"}},".",{"score":{"name":"$CurrHPRDec10","objective":"Temporary"}},{"score":{"name":"$CurrHPRDec","objective":"Temporary"}},"/s)"]]}},{"nbt":"status_ui[2]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"最大ＭＰ: "},[{"score":{"name":"$PreviousMP","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseMP"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentMP","objective":"Temporary"}},")"]]}},{"nbt":"status_ui[3]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"自然回復: "},[{"score":{"name":"$PrevMPRInt","objective":"Temporary"},"color":"#AAAAAA"},".",{"score":{"name":"$PrevMPRDec10","objective":"Temporary"}},{"score":{"name":"$PrevMPRDec","objective":"Temporary"}},"/s → "],[{"score":{"name":"$BaseMPRInt","objective":"Temporary"},"bold":true},".",{"score":{"name":"$BaseMPRDec10","objective":"Temporary"}},{"score":{"name":"$BaseMPRDec","objective":"Temporary"}},"/s"],[{"text":" (+","color":"green"},{"score":{"name":"$CurrMPRInt","objective":"Temporary"}},".",{"score":{"name":"$CurrMPRDec10","objective":"Temporary"}},{"score":{"name":"$CurrMPRDec","objective":"Temporary"}},"/s)"]]}},{"nbt":"status_ui[4]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"物理攻撃: "},[{"score":{"name":"$PreviousSTR","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseSTR"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentSTR","objective":"Temporary"}},")"]]}},{"nbt":"status_ui[5]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"魔法攻撃: "},[{"score":{"name":"$PreviousINT","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseINT"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentINT","objective":"Temporary"}},")"]]}},{"nbt":"status_ui[6]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"器用さ: "},[{"score":{"name":"$PreviousDEX","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseDEX"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentDEX","objective":"Temporary"}},")"]]}},{"nbt":"status_ui[7]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"防御力: "},[{"score":{"name":"$PreviousDEF","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseDEF"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentDEF","objective":"Temporary"}},")"]]}},{"nbt":"status_ui[8]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"素早さ: "},[{"score":{"name":"$PreviousAGI","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseAGI"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentAGI","objective":"Temporary"}},")"]]}},{"nbt":"status_ui[9]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"会心: "},[{"score":{"name":"$PreviousCRT","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseCRT"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentCRT","objective":"Temporary"}},")"]]}},{"nbt":"status_ui[10]","storage":"player:","interpret":true,"hoverEvent":{"action":"show_text","value":[{"text":"幸運: "},[{"score":{"name":"$PreviousLUK","objective":"Temporary"},"color":"#AAAAAA"},"\uF822→\uF822"],[{"score":{"name":"@s","objective":"BaseLUK"},"bold":true}],[{"text":" (+","color":"green"},{"score":{"name":"$CurrentLUK","objective":"Temporary"}},")"]]}}]

# パッシブスキルのtellraw
    execute if data storage player: passive_ui[0] run function player:class/passive_tellraw
    tellraw @s ""

# 演出
    particle minecraft:totem_of_undying ~ ~ ~ 0.1 0.2 0.1 0.5 100 force
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1

# リセット
    tag @s remove LevelUp
    data remove storage player: status_ui
    scoreboard players reset $PreviousLVL Temporary
    scoreboard players reset $PreviousHP Temporary
    scoreboard players reset $PreviousHPR Temporary
    scoreboard players reset $PreviousMP Temporary
    scoreboard players reset $PreviousMPR Temporary
    scoreboard players reset $PreviousSTR Temporary
    scoreboard players reset $PreviousINT Temporary
    scoreboard players reset $PreviousDEX Temporary
    scoreboard players reset $PreviousDEF Temporary
    scoreboard players reset $PreviousAGI Temporary
    scoreboard players reset $PreviousCRT Temporary
    scoreboard players reset $PreviousLUK Temporary
    scoreboard players reset $CurrentHP Temporary
    scoreboard players reset $CurrentHPR Temporary
    scoreboard players reset $CurrentMP Temporary
    scoreboard players reset $CurrentMPR Temporary
    scoreboard players reset $CurrentSTR Temporary
    scoreboard players reset $CurrentINT Temporary
    scoreboard players reset $CurrentDEX Temporary
    scoreboard players reset $CurrentDEF Temporary
    scoreboard players reset $CurrentAGI Temporary
    scoreboard players reset $CurrentCRT Temporary
    scoreboard players reset $CurrentLUK Temporary
    scoreboard players reset $PrevHPRInt Temporary
    scoreboard players reset $PrevHPRDec Temporary
    scoreboard players reset $PrevHPRDec10 Temporary
    scoreboard players reset $PrevMPRInt Temporary
    scoreboard players reset $PrevMPRDec Temporary
    scoreboard players reset $PrevMPRDec10 Temporary
    scoreboard players reset $CurrHPRInt Temporary
    scoreboard players reset $CurrHPRDec Temporary
    scoreboard players reset $CurrHPRDec10 Temporary
    scoreboard players reset $CurrMPRInt Temporary
    scoreboard players reset $CurrMPRDec Temporary
    scoreboard players reset $CurrMPRDec10 Temporary
    scoreboard players reset $BaseHPRInt Temporary
    scoreboard players reset $BaseHPRDec Temporary
    scoreboard players reset $BaseHPRDec10 Temporary
    scoreboard players reset $BaseMPRInt Temporary
    scoreboard players reset $BaseMPRDec Temporary
    scoreboard players reset $BaseMPRDec10 Temporary