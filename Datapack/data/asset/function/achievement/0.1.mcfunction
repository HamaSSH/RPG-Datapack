#> asset:achievement/0.1
# advancement asset:achievement/0.1の達成

execute positioned 295 -51 -350 run summon item_display ~ ~0.5 ~ {item:{components:{"custom_model_data":5001},id:"glass_bottle"}}

# クリアメッセージ
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824隠し実績達成おめでとうございます。本当に！！"]
    tellraw @s [{"text":"\uF828\uF824報酬があるとわかっている訳でもなかったろうに...！！！","color":"gold"}]
    tellraw @s ["\uF828\uF824お礼と言ってはなんですが、",{"text":"トロフィー","color":"yellow"},"を置いておきました。"]
    tellraw @s "\uE302やり込みありがとうございました！！"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]