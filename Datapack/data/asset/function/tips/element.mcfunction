#> asset:tips/element
# 属性纏い

# トリガー：魔法を放つ
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824魔法を放つと、",{"text":"属性纏い","color":"yellow"},"状態になります。５つの属性"]
    tellraw @s "\uE302それぞれに独自の効果があり、主に敵への攻撃を補助します。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]