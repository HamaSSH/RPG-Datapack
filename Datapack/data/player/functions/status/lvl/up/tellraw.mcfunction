#> player:status/lvl/up/tellraw
# レベルアップ時のチャット欄へのtellraw

# 自分以外へのtellraw
    tellraw @a[tag=!LevelUp] ["⭐ ",{"selector":"@s","bold":true},{"text":"のレベルが上がった！"},{"text":" ( "},{"score":{"name":"$PreviousLVL","objective":"Temporary"}},{"text":"→"},{"score":{"name":"@s","objective":"LVL"},"color":"yellow","bold":true},{"text":" )"}]

# 自分へのtellraw
    tellraw @s ["⭐ ",{"text":"レベルが上がった！"},{"text":" ( "},{"score":{"name":"$PreviousLVL","objective":"Temporary"}},{"text":"→"},{"score":{"name":"@s","objective":"LVL"},"color":"yellow","bold":true},{"text":" )"}]

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
    execute if score $CurrentHP Temporary matches 1.. run tellraw @s [{"text":"\uE100 最大ＨＰ:  "},{"score":{"name":"$PreviousHP","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseHP"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentHP","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $CurrentMP Temporary matches 1.. run tellraw @s [{"text":"\uE102 最大ＭＰ:  "},{"score":{"name":"$PreviousMP","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseMP"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentMP","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $CurrentSTR Temporary matches 1.. run tellraw @s [{"text":"\uE104 物理攻撃:  "},{"score":{"name":"$PreviousSTR","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseSTR"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentSTR","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $CurrentINT Temporary matches 1.. run tellraw @s [{"text":"\uE105 魔法攻撃:  "},{"score":{"name":"$PreviousINT","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseINT"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentINT","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $CurrentDEX Temporary matches 1.. run tellraw @s [{"text":"\uE106 器用さ:     \uF803"},{"score":{"name":"$PreviousDEX","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseDEX"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentDEX","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $CurrentDEF Temporary matches 1.. run tellraw @s [{"text":"\uE108 防御力:     \uF803"},{"score":{"name":"$PreviousDEF","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseDEF"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentDEF","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $CurrentAGI Temporary matches 1.. run tellraw @s [{"text":"\uE109 素早さ:     \uF803"},{"score":{"name":"$PreviousAGI","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseAGI"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentAGI","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $CurrentCRT Temporary matches 1.. run tellraw @s [{"text":"\uE10A 会心:       \uF802"},{"score":{"name":"$PreviousCRT","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseCRT"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentCRT","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    execute if score $CurrentLUK Temporary matches 1.. run tellraw @s [{"text":"\uE10B 幸運:       \uF802"},{"score":{"name":"$PreviousLUK","objective":"Temporary"},"color":"#AAAAAA"},{"text":" → ","color":"#AAAAAA"},{"score":{"name":"@s","objective":"BaseLUK"},"bold":true},{"text":" (+","color":"green"},{"score":{"name":"$CurrentLUK","objective":"Temporary"},"color":"green"},{"text":")","color":"green"}]
    tellraw @s ""

# 演出
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1

# リセット
    scoreboard players reset $PreviousLVL Temporary
    scoreboard players reset $PreviousHP Temporary
    scoreboard players reset $PreviousMP Temporary
    scoreboard players reset $PreviousSTR Temporary
    scoreboard players reset $PreviousINT Temporary
    scoreboard players reset $PreviousDEX Temporary
    scoreboard players reset $PreviousDEF Temporary
    scoreboard players reset $PreviousSPD Temporary
    scoreboard players reset $PreviousCRT Temporary
    scoreboard players reset $PreviousLUK Temporary
    scoreboard players reset $CurrentHP Temporary
    scoreboard players reset $CurrentMP Temporary
    scoreboard players reset $CurrentSTR Temporary
    scoreboard players reset $CurrentINT Temporary
    scoreboard players reset $CurrentDEX Temporary
    scoreboard players reset $CurrentDEF Temporary
    scoreboard players reset $CurrentSPD Temporary
    scoreboard players reset $CurrentCRT Temporary
    scoreboard players reset $CurrentLUK Temporary