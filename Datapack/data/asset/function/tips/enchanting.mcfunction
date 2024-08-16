#> asset:tips/enchanting
# エンチャント要素

# トリガー：エンチャント台に視点を合わせる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824一部アイテムは",{"text":"エンチャ台","color":"yellow"},"にて",{"text":"エンチャント","color":"yellow"},"をすることができます。"]
    tellraw @s "\uE302単純なステータス強化では得られない特殊な効果をアイテムに継承できます。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]