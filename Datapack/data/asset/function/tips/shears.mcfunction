#> asset:tips/shears
# ハサミ

# トリガー：ハサミをインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824",{"text":"ハサミ","color":"yellow"},"は、",{"text":"採取","color":"yellow"},"をするための採集ツールです。"]
    tellraw @s "\uE302一定の右クリック操作で主な植物の採集が可能です。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]