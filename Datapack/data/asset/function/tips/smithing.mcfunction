#> asset:tips/smithing
# 鍛冶要素

# トリガー：鍛冶の金床に視点を合わせる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.2 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824武器や防具は",{"text":"金床","color":"yellow"},"にて",{"text":"強化","color":"yellow"},"をすることができます。"]
    tellraw @s ["\uF828\uF824また、素材・ﾄﾞﾛｯﾌﾟ系のアイテムを",{"text":"合成","color":"yellow"},"することができ、"]
    tellraw @s "\uE302装備を自分の好みにカスタマイズできます。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]