#> player:status/ui
# ステータス確認UI

tag @s add CheckingStatus
playsound resource:custom.levelup master @s ~ ~ ~ 0.2 1.7

# 自然回復力
    scoreboard players operation $HPRegenInt Temporary = @s HPRegen
    scoreboard players operation $HPRegenInt Temporary /= #100 Constant
    scoreboard players operation $HPRegenDec Temporary = @s HPRegen
    scoreboard players operation $HPRegenDec Temporary %= #100 Constant
    scoreboard players operation $MPRegenInt Temporary = @s MPRegen
    scoreboard players operation $MPRegenInt Temporary /= #100 Constant
    scoreboard players operation $MPRegenDec Temporary = @s MPRegen
    scoreboard players operation $MPRegenDec Temporary %= #100 Constant

tellraw @s ["\n\uE302\uF822",{"selector":"@s"},"\uF826",{"text":"Lv.","color":"#E0E0E0"},{"score":{"name":"@s","objective":"LVL"},"bold":true},"\uF824\uE303\n"]
tellraw @s [{"text": "\uE100\uF802▸","color": "white","italic": false},{"text": "ＨＰ: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"HP"},"bold":true},"/",{"score":{"name":"@s","objective":"HPMax"}},{"text": " (\uE101\uF822","color": "white","italic": false},{"score":{"name":"$HPRegenInt","objective":"Temporary"}},".",{"score":{"name":"$HPRegenDec","objective":"Temporary"}},"/s)"]
tellraw @s [{"text": "\uE102\uF802▸","color": "white","italic": false},{"text": "ＭＰ: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"MP"},"bold":true},"/",{"score":{"name":"@s","objective":"MPMax"}},{"text": " (\uE103\uF822","color": "white","italic": false},{"score":{"name":"$MPRegenInt","objective":"Temporary"}},".",{"score":{"name":"$MPRegenDec","objective":"Temporary"}},"/s)","\n"]
tellraw @s [{"text": "\uE104\uF802▸","color": "white","italic": false},{"text": "物理: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"STR"},"bold":true},"\uF826",{"text": "\uE108\uF802▸","color": "white","italic": false},{"text": "防御: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"DEF"},"bold":true}]
# tellraw @s [{"text": "\uE104\uF802▸","color": "white","italic": false},{"text": "物理: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"STR"},"bold":true},"\uF826",{"text": "\uE108\uF802▸","color": "white","italic": false},{"text": "防御: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"DEF"},"bold":true},"\uF826",{"text": "\uE108\uF802▸","color": "white","italic": false},{"text": "抵抗: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"DEF"},"bold":true}]
tellraw @s [{"text": "\uE105\uF802▸","color": "white","italic": false},{"text": "魔法: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"INT"},"bold":true},"\uF826",{"text": "\uE10A\uF802▸","color": "white","italic": false},{"text": "会心: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"CRT"},"bold":true},"\uF826",{"text": "\uE10B\uF802▸","color": "white","italic": false},{"text": "幸運: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"LUK"},"bold":true}]
tellraw @s [{"text": "\uE106\uF802▸","color": "white","italic": false},{"text": "器用: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"DEX"},"bold":true},"\uF826",{"text": "\uE109\uF802▸","color": "white","italic": false},{"text": "素早さ: ","color": "#E0E0E0"},{"score":{"name":"@s","objective":"AGI"},"bold":true},"\n"]

# リセット
    tag @s remove PlaysoundOnce
    scoreboard players reset $HPRegenInt Temporary
    scoreboard players reset $HPRegenDec Temporary
    scoreboard players reset $MPRegenInt Temporary
    scoreboard players reset $MPRegenDec Temporary