#> asset:tips/cooking
# 料理要素

# トリガー：焚き火に視点を合わせる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824消費アイテムやﾄﾞﾛｯﾌﾟは",{"text":"焚き火","color":"yellow"},"にて",{"text":"料理","color":"yellow"},"することができます。"]
    tellraw @s "\uE302材料を消費して、美味で強力な消費アイテムを作成できます。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]