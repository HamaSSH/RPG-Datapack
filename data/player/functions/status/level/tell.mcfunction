# 演出(レベルアップ一度きり)
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.0
    tellraw @s ["☆ ",{"selector":"@s","bold":true},{"text":" がレベルアップしました！"},{"text":" ( "},{"score":{"name":"@s","objective":"PreviousLevel"}},{"text":"→"},{"score":{"name":"@s","objective":"level"},"color":"yellow","bold":true},{"text":" )"}]
# リセット
    tag @s remove LevelUp
    advancement revoke @s only player:level_up