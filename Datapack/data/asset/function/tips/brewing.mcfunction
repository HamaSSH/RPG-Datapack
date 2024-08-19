#> asset:tips/brewing
# 醸造要素

# トリガー：醸造台に視点を合わせる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.3 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824消費アイテムやﾄﾞﾛｯﾌﾟは",{"text":"醸造台","color":"yellow"},"にて",{"text":"醸造","color":"yellow"},"をすることができます。"]
    tellraw @s "\uE302アイテムの効果を混ぜ合わせたユニークなポーションを生成できます。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]