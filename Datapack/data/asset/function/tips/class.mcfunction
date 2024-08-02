#> asset:tips/class
# 職業要素

# トリガー：転職の村人リンネに視点を合わせる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824リンネに話しかけると",{"text":"職業","color":"yellow"},"を選択する画面が開きます。"]
    tellraw @s "\uE302自分だけのプレイスタイルを見つけよう！！"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]