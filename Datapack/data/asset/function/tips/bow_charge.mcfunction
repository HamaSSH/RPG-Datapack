#> asset:tips/bow_charge
# 弓＋ため攻撃

# トリガー：武器をインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824この世界における",{"text":"弓","color":"yellow"},"は矢を必要とせず、消費もしません。"]
    tellraw @s ["\uE302また、沢山チャージすると、",{"text":"ため攻撃","color":"yellow"},"を放つことができます。"]
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]