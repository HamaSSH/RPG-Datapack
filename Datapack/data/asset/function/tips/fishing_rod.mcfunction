#> asset:tips/fishing_rod
# 釣り竿

# トリガー：釣り竿をインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824",{"text":"釣り竿","color":"yellow"},"は、",{"text":"釣り","color":"yellow"},"をするための採集ツールです。"]
    tellraw @s "\uE302水域から多様なアイテムを釣り上げることができます。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]