#> player:combat/main/spear/skill/init
# ため攻撃の初期処理

# 十分なMPを持っているか検知
    data modify storage player: MPCost set value 20
    function player:status/mp/check/_

# 十分なMPを持っていればため攻撃
    execute if entity @s[tag=MPCheckPass] run function player:combat/main/spear/skill/start

# リセット
    data remove storage player: MPCost