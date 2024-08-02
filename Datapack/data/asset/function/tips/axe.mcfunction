#> asset:tips/axe
# 斧

# トリガー：斧をインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824",{"text":"斧","color":"yellow"},"は、",{"text":"木こり","color":"yellow"},"をするための採集ツールです。"]
    tellraw @s "\uE302特定のエリアでの木ブロックの採集が可能です。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]