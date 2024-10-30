#> asset:tips/magic_cycle
# 魔導書

# トリガー：魔導書をインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.2 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824",{"text":"杖","color":"yellow"},"をメインハンド、",{"text":"魔導書","color":"yellow"},"をオフハンドに持った際、"]
    tellraw @s ["\uE302",{"keybind":"key.swapOffhand"},"キーでホットバーの魔導書を切り替えることができます。"]
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]