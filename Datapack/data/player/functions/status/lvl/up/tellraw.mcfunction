#> player:status/lvl/up/tellraw
# レベルアップ時のチャット欄へのtellraw

# 自分以外へのtellraw
    tellraw @a[tag=!LevelUp] ["☆ ",{"selector":"@s","bold":true},{"text":"のレベルが上がった！"},{"text":" ( "},{"score":{"name":"$PreviousLVL","objective":"Temporary"}},{"text":"→"},{"score":{"name":"@s","objective":"LVL"},"color":"yellow","bold":true},{"text":" )"}]

# 自分へのtellraw
    tellraw @s ["☆ ",{"text":"レベルが上がった！"},{"text":" ( "},{"score":{"name":"$PreviousLVL","objective":"Temporary"}},{"text":"→"},{"score":{"name":"@s","objective":"LVL"},"color":"yellow","bold":true},{"text":" )"}]

# 演出
    playsound resource:custom.levelup master @s ~ ~ ~ 1 1

# リセット
    scoreboard players reset $PreviousLVL Temporary