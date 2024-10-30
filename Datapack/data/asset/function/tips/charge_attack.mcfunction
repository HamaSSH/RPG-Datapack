#> asset:tips/charge_attack
# ため攻撃

# トリガー：武器をインベントリに入れる
    playsound resource:custom.levelup master @s ~ ~ ~ 0.2 1.3
    tellraw @s ""
    tellraw @s ["\uF828\uF824６つの武器種それぞれには",{"text":"ため攻撃","color":"yellow"},"が実装されています。"]
    tellraw @s "\uE302武器を持った状態で、右下の青いバーをスニークで溜め→攻撃！"
    tellraw @s ["\uF822",{"text": "                          ","color":"dark_gray","strikethrough":true}]