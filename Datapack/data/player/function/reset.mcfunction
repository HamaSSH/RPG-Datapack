#> player:reset
# プレイヤーを初期化

# 職業関連リセット
    function player:class/leave
    scoreboard players reset @s HunterRank
    scoreboard players reset @s FighterRank
    scoreboard players reset @s PaladinRank
    scoreboard players reset @s WizardRank
    scoreboard players reset @s 3.3.GenerateLoot
    tag @s remove FirstTimeHunter
    tag @s remove FirstTimeFighter
    tag @s remove FirstTimePaladin
    tag @s remove FirstTimeWizard

# ステータス初期化
    function player:status/init

# 実績の初期化
    function asset:achievement/init

# TIPSの初期化
    function asset:tips/reset