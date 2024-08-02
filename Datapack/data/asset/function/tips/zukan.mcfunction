#> asset:tips/zukan
# 図鑑

# トリガー：図鑑をインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824",{"text":"図鑑","color":"yellow"},"は、発見したアイテムを記録していく本です。"]
    tellraw @s "\uE302随時不思議な力で更新・同期されていきます。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]