#> asset:tips/repair
# 鍛冶(修理)

# トリガー：ツールの耐久値を減らす
    playsound resource:custom.levelup master @s ~ ~ ~ 0.5 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824耐久値を消費したツールは金床で",{"text":"修理","color":"yellow"},"できます。"]
    tellraw @s "\uE302GOLDを消費して、耐久値を回復＋最大耐久値を増やします。"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]