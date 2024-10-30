#> asset:tips/enchant_duplicate
# エンチャント要素

# トリガー：エンチャントする
    playsound resource:custom.levelup master @s ~ ~ ~ 0.2 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824同一の",{"text":"エンチャント","color":"yellow"},"は基本的に効果が重複しません。"]
    tellraw @s ["\uE302異なる名前を持つもののみ、効果の掛け合わせが起こります。"]
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]