#> asset:tips/magic
# 魔導書

# トリガー：魔導書をインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824",{"text":"魔導書","color":"yellow"},"は、オフハンドに持って右クリックで使用できます。"]
    tellraw @s "\uE302相応のＭＰを消費し、属性に対応した魔法を放ちます。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]