#> asset:tips/pickaxe
# ピッケル

# トリガー：ピッケルをインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824",{"text":"ピッケル","color":"yellow"},"は、",{"text":"採掘","color":"yellow"},"をするための採集ツールです。"]
    tellraw @s "\uE302一定の左クリック操作で主な鉱石ブロックの採集が可能です。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]