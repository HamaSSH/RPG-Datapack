#> asset:tips/status_check
# ステータス確認

# トリガー：装備を着る
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824真上を向いてスニークすると、",{"text":"ステータス","color":"yellow"},"の確認ができます。"]
    tellraw @s "\uE302武器や防具、ポーション等で補正された値を見てニヤニヤしましょう。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]