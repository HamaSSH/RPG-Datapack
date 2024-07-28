#> asset:tips/accessory
# 装備品

# トリガー：装備品をインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824インベントリ左上３マスは",{"text":"装備品","color":"yellow"},"の枠となっています。"]
    tellraw @s "\uE302武器や防具と同じようにプレイヤーのステータスを補正していきます。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]