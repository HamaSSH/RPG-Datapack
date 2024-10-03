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
    scoreboard players set @s PreviousMPRatio -1
    function player:status/init

# 実績の初期化
    # 実績達成検知用の進捗
        advancement revoke @s only player:trigger/achievement_0.1
        advancement revoke @s only player:trigger/achievement_1.6
        advancement revoke @s only player:trigger/achievement_2.6
    function asset:achievement/init

# TIPSの初期化
    function asset:tips/reset